local K, C = unpack(select(2, ...))

-- Application Programming Interface for KkthnxUI (API)

local _G = _G
local assert = _G.assert
local getmetatable = _G.getmetatable
local select = _G.select

local CreateFrame = _G.CreateFrame
local CUSTOM_CLASS_COLORS = _G.CUSTOM_CLASS_COLORS
local EnumerateFrames = _G.EnumerateFrames
local RAID_CLASS_COLORS = _G.RAID_CLASS_COLORS
local RegisterStateDriver = _G.RegisterStateDriver
local UIParent = _G.UIParent
local UnitClass = _G.UnitClass

local CustomClass = select(2, UnitClass("player"))
local CustomClassColor = K.Class == "PRIEST" and K.PriestColors or (CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[CustomClass] or RAID_CLASS_COLORS[CustomClass])
local CustomCloseButton = "Interface\\AddOns\\KkthnxUI\\Media\\Textures\\CloseButton_32"

BINDING_HEADER_KKTHNXUI = GetAddOnMetadata(..., "Title")

K.UIFrameHider = CreateFrame("Frame", nil, UIParent, "SecureHandlerAttributeTemplate")
K.UIFrameHider:Hide()
K.UIFrameHider:SetPoint("TOPLEFT", 0, 0)
K.UIFrameHider:SetPoint("BOTTOMRIGHT", 0, 0)
RegisterAttributeDriver(K.UIFrameHider, "state-visibility", "hide")

K.PetBattleHider = CreateFrame("Frame", nil, UIParent, "SecureHandlerStateTemplate")
K.PetBattleHider:SetAllPoints()
K.PetBattleHider:SetFrameStrata("LOW")
RegisterStateDriver(K.PetBattleHider, "visibility", "[petbattle] hide; show")

local function CreateBorder(f, bLayer, bOffset, bPoints, strip)
	if f.Backgrounds then
		return
	end

	bLayer = bLayer or -2
	bOffset = bOffset or 4
	bPoints = bPoints or 0

	if strip then
		f:StripTextures()
	end

	K.CreateBorder(f, bOffset) -- object, offset, size, drawLayer, drawSubLevel, path

	local backgrounds = f:CreateTexture(nil, "BACKGROUND")
	backgrounds:SetDrawLayer("BACKGROUND", bLayer)
	backgrounds:SetPoint("TOPLEFT", f ,"TOPLEFT", bPoints, -bPoints)
	backgrounds:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -bPoints, bPoints)
	backgrounds:SetColorTexture(C["Media"].BackdropColor[1], C["Media"].BackdropColor[2], C["Media"].BackdropColor[3], C["Media"].BackdropColor[4])

	f:SetBorderColor()

	f.Backgrounds = backgrounds
end

local function CreateBackdrop(f)
	if f.Backdrop then
		return
	end

	local b = CreateFrame("Frame", nil, f)
	b:SetPoint("TOPLEFT", f, "TOPLEFT")
	b:SetPoint("BOTTOMRIGHT", f, "BOTTOMRIGHT")
	b:CreateBorder()

	if f:GetFrameLevel() - 1 >= 0 then
		b:SetFrameLevel(f:GetFrameLevel())
	else
		b:SetFrameLevel(0)
	end

	f.Backdrop = b
end

local function CreateBackground(f, a)
	f:SetBackdrop({
		bgFile = C["Media"].Blank, edgeFile = C["Media"].Blank, edgeSize = K.Mult,
	})

	f:SetBackdropColor(C.Media.BackdropColor[1], C.Media.BackdropColor[2], C.Media.BackdropColor[3], a or C.Media.BackdropColor[4])
	f:SetBackdropBorderColor(0, 0, 0)
end


local function CreateShadow(f, bd)
	if f.Shadow then
		return
	end

	local frame = f
	if f:GetObjectType() == "Texture" then
		frame = f:GetParent()
	end
	local lvl = frame:GetFrameLevel()
	-- if not m then
	-- 	m, s = 2, 3
	-- end

	f.Shadow = CreateFrame("Frame", nil, frame)
	f.Shadow:SetPoint("TOPLEFT", f, -3, 3)
	f.Shadow:SetPoint("BOTTOMRIGHT", f, 3, -3)
	if bd then
		f.Shadow:SetBackdrop({
			bgFile = C["Media"].Blank,
			edgeFile = C["Media"].Glow,
			edgeSize = 3,
			insets = {left = 3, right = 3, top = 3, bottom = 3}
		})
	else
		f.Shadow:SetBackdrop({
			edgeFile = C["Media"].Glow,
			edgeSize = 3
		})
	end
	f.Shadow:SetFrameLevel(lvl == 0 and 0 or lvl - 1)
	if bd then
		f.Shadow:SetBackdropColor(C.Media.BackdropColor[1], C.Media.BackdropColor[2], C.Media.BackdropColor[3], C.Media.BackdropColor[4])
	end
	f.Shadow:SetBackdropBorderColor(0, 0, 0, 0.8)

	return f.Shadow
end

local function CreateInnerShadow(f, isLayer, isAlpha, isLPoints, isRPoints)
	if f.InnerShadow then
		return
	end

	isLayer = isLayer or -1
	isAlpha = isAlpha or C.Media.BackdropColor[4]
	isLPoints = isLPoints or 0
	isRPoints = isRPoints or 0

	local innerShadow = f:CreateTexture(nil, "OVERLAY", nil, isLayer)
	innerShadow:SetAtlas("Artifacts-BG-Shadow")
	innerShadow:SetPoint("TOPLEFT", isLPoints, isRPoints)
	innerShadow:SetPoint("BOTTOMRIGHT", isLPoints, isRPoints - 1) -- Minus 1 here because it is off by default.
	innerShadow:SetVertexColor(C.Media.BackdropColor[1], C.Media.BackdropColor[2], C.Media.BackdropColor[3], isAlpha)

	f.InnerShadow = innerShadow
end

local function Kill(object)
	if object.UnregisterAllEvents then
		object:UnregisterAllEvents()
		object:SetParent(K.UIFrameHider)
	else
		object.Show = object.Hide
	end

	object:Hide()
end

local StripTexturesBlizzFrames = {
	"ArtOverlayFrame",
	"BG",
	"Border",
	"BorderFrame",
	"BottomInset",
	"FilligreeOverlay",
	"Inset",
	"InsetFrame",
	"LeftInset",
	"NineSlice",
	"Portrait",
	"PortraitOverlay",
	"RightInset",
	"ScrollFrameBorder",
	"bgLeft",
	"bgRight",
	"border",
	"bottomInset",
	"inset",
	"portrait",
}

local STRIP_TEX = "Texture"
local STRIP_FONT = "FontString"
local function StripRegion(which, object, kill, alpha)
	if kill then
		object:Kill()
	elseif alpha then
		object:SetAlpha(0)
	elseif which == STRIP_TEX then
		object:SetTexture()
	elseif which == STRIP_FONT then
		object:SetText("")
	end
end

local function StripType(which, object, kill, alpha)
	if object:IsObjectType(which) then
		StripRegion(which, object, kill, alpha)
	else
		if which == STRIP_TEX then
			local FrameName = object.GetName and object:GetName()
			for _, Blizzard in pairs(StripTexturesBlizzFrames) do
				local BlizzFrame = object[Blizzard] or (FrameName and _G[FrameName..Blizzard])
				if BlizzFrame and BlizzFrame.StripTextures then
					BlizzFrame:StripTextures(kill, alpha)
				end
			end
		end

		if object.GetNumRegions then
			for i = 1, object:GetNumRegions() do
				local region = select(i, object:GetRegions())
				if region and region.IsObjectType and region:IsObjectType(which) then
					StripRegion(which, region, kill, alpha)
				end
			end
		end
	end
end

local function StripTextures(object, kill, alpha)
	StripType(STRIP_TEX, object, kill, alpha)
end

local function StripTexts(object, kill, alpha)
	StripType(STRIP_FONT, object, kill, alpha)
end

local function FontTemplate(fs, font, fontSize, fontStyle)
	fs.font = font
	fs.fontSize = fontSize
	fs.fontStyle = fontStyle

	font = font or C["Media"].Font
	fontSize = fontSize or 12

	if fontSize > 12 and not fs.fontSize then
		fontSize = 12
	end

	fs:SetFont(font, fontSize, fontStyle)
	if fontStyle and (fontStyle ~= "NONE") then
		fs:SetShadowOffset(0, 0)
		fs:SetShadowColor(0, 0, 0, 0)
	else
		local s = K.Mult or 1
		fs:SetShadowOffset(s, -s / 2)
		fs:SetShadowColor(0, 0, 0, 1)
	end
end

local function StyleButton(button, noHover, noPushed, noChecked)
	if button.SetHighlightTexture and not button.hover and not noHover then
		button:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
		button:GetHighlightTexture():SetAllPoints()
	end

	if button.SetPushedTexture and not button.pushed and not noPushed then
		button:SetPushedTexture("Interface\\Buttons\\ButtonHilight-Square")
		button:GetPushedTexture():SetBlendMode("ADD")
		button:GetPushedTexture():SetDesaturated(true)
		button:GetPushedTexture():SetVertexColor(246, 196, 66)
		button:GetPushedTexture():SetAllPoints()
	end

	if button.SetCheckedTexture and not button.checked and not noChecked then
		button:SetCheckedTexture("Interface\\Buttons\\CheckButtonHilight")
		button:GetCheckedTexture():SetBlendMode("ADD")
		button:GetCheckedTexture():SetAllPoints()
	end

	local name = button.GetName and button:GetName()
	local cooldown = name and _G[name.."Cooldown"]
	if cooldown then
		cooldown:ClearAllPoints()
		cooldown:SetPoint("TOPLEFT", 1, -1)
		cooldown:SetPoint("BOTTOMRIGHT", -1, 1)
		cooldown:SetDrawEdge(false)
		cooldown:SetSwipeColor(0, 0, 0, 1)
	end
end

local function SetModifiedBackdrop(self)
	if not C["General"].ColorTextures then
		self:SetBackdropBorderColor(CustomClassColor.r, CustomClassColor.g, CustomClassColor.b, 1)
	end

	self:SetBackdropBorderColor(CustomClassColor.r, CustomClassColor.g, CustomClassColor.b, 1)
	self.Backgrounds:SetColorTexture(CustomClassColor.r * .15, CustomClassColor.g * .15, CustomClassColor.b * .15, C.Media.BackdropColor[4])
end

local function SetOriginalBackdrop(self)
	if not C["General"].ColorTextures then
		self:SetBackdropBorderColor()
	end

	self:SetBackdropBorderColor()
	self.Backgrounds:SetColorTexture(C.Media.BackdropColor[1], C.Media.BackdropColor[2], C.Media.BackdropColor[3], C.Media.BackdropColor[4])
end

local function SkinButton(f, strip)
	assert(f, "doesnt exist!")

	if f.Left then
		f.Left:SetAlpha(0)
	end

	if f.Middle then
		f.Middle:SetAlpha(0)
	end

	if f.Right then
		f.Right:SetAlpha(0)
	end

	if f.TopLeft then
		f.TopLeft:SetAlpha(0)
	end

	if f.TopMiddle then
		f.TopMiddle:SetAlpha(0)
	end

	if f.TopRight then
		f.TopRight:SetAlpha(0)
	end

	if f.MiddleLeft then
		f.MiddleLeft:SetAlpha(0)
	end

	if f.MiddleMiddle then
		f.MiddleMiddle:SetAlpha(0)
	end

	if f.MiddleRight then
		f.MiddleRight:SetAlpha(0)
	end

	if f.BottomLeft then
		f.BottomLeft:SetAlpha(0)
	end

	if f.BottomMiddle then
		f.BottomMiddle:SetAlpha(0)
	end

	if f.BottomRight then
		f.BottomRight:SetAlpha(0)
	end

	if f.LeftSeparator then
		f.LeftSeparator:SetAlpha(0)
	end

	if f.RightSeparator then
		f.RightSeparator:SetAlpha(0)
	end

	if f.SetNormalTexture then
		f:SetNormalTexture("")
	end

	if f.SetHighlightTexture then
		f:SetHighlightTexture("")
	end

	if f.SetPushedTexture then
		f:SetPushedTexture("")
	end

	if f.SetDisabledTexture then
		f:SetDisabledTexture("")
	end

	if strip then
		f:StripTextures()
	end

	f:CreateBorder()

	f:HookScript("OnEnter", SetModifiedBackdrop)
	f:HookScript("OnLeave", SetOriginalBackdrop)
end

local function SkinCloseButton(f, point, texture)
	assert(f, "doesnt exist!")

	f:StripTextures()
	f:CreateBorder(nil, 12, 8)
	f:HookScript("OnEnter", SetModifiedBackdrop)
	f:HookScript("OnLeave", SetOriginalBackdrop)
	f:SetHitRectInsets(6, 6, 7, 7)

	if not texture then
		texture = CustomCloseButton
	end

	if not f.button then
		f.button = f:CreateTexture(nil, "OVERLAY")
		f.button:SetSize(16, 16)
		f.button:SetTexture(texture)
		f.button:SetPoint("CENTER", f, "CENTER")
	end

	if point then
		f:SetPoint("TOPRIGHT", point, "TOPRIGHT", 2, 2)
	end
end

local function SkinCheckBox(f)
	f:CreateBorder(nil, nil, nil, true)

	if f.SetCheckedTexture then
		f:SetCheckedTexture("Interface\\AddOns\\KkthnxUI\\Media\\Textures\\UI-CheckBox-Check")
	end

	if f.SetDisabledCheckedTexture then
		f:SetDisabledCheckedTexture("Interface\\AddOns\\KkthnxUI\\Media\\Textures\\UI-CheckBox-Check-Disabled")
	end

	-- Why Is The Disabled Texture Always Displayed As Checked?
	f:HookScript("OnDisable", function(self)
		if not self.SetDisabledTexture then
			return
		end

		if self:GetChecked() then
			self:SetDisabledTexture("Interface\\AddOns\\KkthnxUI\\Media\\Textures\\UI-CheckBox-Check-Disabled")
		else
			self:SetDisabledTexture("")
		end
	end)

	f.SetNormalTexture = K.Noop
	f.SetPushedTexture = K.Noop
	f.SetHighlightTexture = K.Noop
end

local function scrollBarHook(f, delta)
	f:SetValue(f:GetValue() - delta * 50)
end

local function SkinScrollBar(f, width)
	local frame = f:GetName()

	if not width then
		width = 6
	end

	local up, down = f:GetChildren()
	if up then
		up:Kill()
	end

	if down then
		down:Kill()
	end

	local bu = (f.ThumbTexture or f.thumbTexture) or frame and _G[frame.."ThumbTexture"]
	if bu then
		bu:SetColorTexture(0.3, 0.3, 0.3)
		bu:SetSize(width, 10)
		bu:SetPoint("LEFT", -5, 0)
	end

	f:SetScript("OnMouseWheel", scrollBarHook)
end

local function WatchPixelSnap(frame, snap)
	if (frame and not frame:IsForbidden()) and frame.PixelSnapDisabled and snap then
		frame.PixelSnapDisabled = nil
	end
end

local function DisablePixelSnap(frame)
	if (frame and not frame:IsForbidden()) and not frame.PixelSnapDisabled then
		if frame.SetSnapToPixelGrid then
			frame:SetSnapToPixelGrid(false)
			frame:SetTexelSnappingBias(0)
		elseif frame.GetStatusBarTexture then
			local texture = frame:GetStatusBarTexture()
			if texture and texture.SetSnapToPixelGrid then
				texture:SetSnapToPixelGrid(false)
				texture:SetTexelSnappingBias(0)
			end
		end

		frame.PixelSnapDisabled = true
	end
end

local function AddCustomAPI(object)
	local MetaTable = getmetatable(object).__index

	if not object.CreateBorder then
		MetaTable.CreateBorder = CreateBorder
	end

	if not object.CreateBackdrop then
		MetaTable.CreateBackdrop = CreateBackdrop
	end

	if not object.CreateBackground then
		MetaTable.CreateBackground = CreateBackground
	end

	if not object.CreateShadow then
		MetaTable.CreateShadow = CreateShadow
	end

	if not object.CreateInnerShadow then
		MetaTable.CreateInnerShadow = CreateInnerShadow
	end

	if not object.FontTemplate then
		MetaTable.FontTemplate = FontTemplate
	end

	if not object.Kill then
		MetaTable.Kill = Kill
	end

	if not object.SkinButton then
		MetaTable.SkinButton = SkinButton
	end

	if not object.StripTextures then
		MetaTable.StripTextures = StripTextures
	end

	if not object.StripTexts then
		MetaTable.StripTexts = StripTexts
	end

	if not object.StyleButton then
		MetaTable.StyleButton = StyleButton
	end

	if not object.SkinCloseButton then
		MetaTable.SkinCloseButton = SkinCloseButton
	end

	if not object.SkinCheckBox then
		MetaTable.SkinCheckBox = SkinCheckBox
	end

	if not object.SkinScrollBar then
		MetaTable.SkinScrollBar = SkinScrollBar
	end

	if not object.DisabledPixelSnap then
		if MetaTable.SetTexture then hooksecurefunc(MetaTable, "SetTexture", DisablePixelSnap) end
		if MetaTable.SetTexCoord then hooksecurefunc(MetaTable, "SetTexCoord", DisablePixelSnap) end
		if MetaTable.CreateTexture then hooksecurefunc(MetaTable, "CreateTexture", DisablePixelSnap) end
		if MetaTable.SetVertexColor then hooksecurefunc(MetaTable, "SetVertexColor", DisablePixelSnap) end
		if MetaTable.SetColorTexture then hooksecurefunc(MetaTable, "SetColorTexture", DisablePixelSnap) end
		if MetaTable.SetSnapToPixelGrid then hooksecurefunc(MetaTable, "SetSnapToPixelGrid", WatchPixelSnap) end
		if MetaTable.SetStatusBarTexture then hooksecurefunc(MetaTable, "SetStatusBarTexture", DisablePixelSnap) end
		MetaTable.DisabledPixelSnap = true
	end
end

local Handled = {["Frame"] = true}
local Object = CreateFrame("Frame")

AddCustomAPI(Object)
AddCustomAPI(Object:CreateTexture())
AddCustomAPI(Object:CreateFontString())
AddCustomAPI(Object:CreateMaskTexture())

Object = EnumerateFrames()
while Object do
	if not Object:IsForbidden() and not Handled[Object:GetObjectType()] then
		AddCustomAPI(Object)
		Handled[Object:GetObjectType()] = true
	end

	Object = EnumerateFrames(Object)
end

-- Hacky fix for issue on 7.1 PTR where scroll frames no longer seem to inherit the methods from the "Frame" widget
local ScrollFrame = CreateFrame("ScrollFrame")
AddCustomAPI(ScrollFrame)