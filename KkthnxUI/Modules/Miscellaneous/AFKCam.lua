local K, C = unpack(select(2, ...))
local AFK = K:GetModule("Miscellaneous")

-- Sourced: ElvUI (Elv)

local _G = _G
local math_floor = math.floor

local C_PetBattles_IsInBattle = _G.C_PetBattles.IsInBattle
local CinematicFrame = _G.CinematicFrame
local CloseAllWindows = _G.CloseAllWindows
local CreateFrame = _G.CreateFrame
local GetBattlefieldStatus = _G.GetBattlefieldStatus
local GetGuildInfo = _G.GetGuildInfo
local GetScreenHeight = _G.GetScreenHeight
local GetScreenWidth = _G.GetScreenWidth
local GetTime = _G.GetTime
local InCombatLockdown = _G.InCombatLockdown
local IsInGuild = _G.IsInGuild
local MoveViewLeftStart = _G.MoveViewLeftStart
local MoveViewLeftStop = _G.MoveViewLeftStop
local MovieFrame = _G.MovieFrame
local PVEFrame_ToggleFrame = _G.PVEFrame_ToggleFrame
local Screenshot = _G.Screenshot
local SetCVar = _G.SetCVar
local UnitCastingInfo = _G.UnitCastingInfo
local UnitIsAFK = _G.UnitIsAFK

local CAMERA_SPEED = 0.035
local ignoreKeys = {
	LALT = true,
	LSHIFT = true,
	RSHIFT = true,
}
local printKeys = {
	["PRINTSCREEN"] = true,
}

if IsMacClient() then
	printKeys[_G.KEY_PRINTSCREEN_MAC] = true
end

function AFK:UpdateTimer()
	local time = GetTime() - AFK.startTime
	AFK.AFKMode.bottom.time:SetFormattedText("%02d:%02d", math_floor(time / 60), time % 60)
end

function AFK:SetAFK(status)
	if(status) then
		MoveViewLeftStart(CAMERA_SPEED)
		AFK.AFKMode:Show()
		CloseAllWindows()
		_G.UIParent:Hide()

		if (IsInGuild()) then
			local guildName, guildRankName = GetGuildInfo("player")
			AFK.AFKMode.bottom.guild:SetFormattedText("%s-%s", guildName, guildRankName)
		else
			AFK.AFKMode.bottom.guild:SetText("No Guild")
		end

		AFK.AFKMode.bottom.model.curAnimation = "wave"
		AFK.AFKMode.bottom.model.startTime = GetTime()
		AFK.AFKMode.bottom.model.duration = 2.3
		AFK.AFKMode.bottom.model:SetUnit("player")
		AFK.AFKMode.bottom.model.isIdle = nil
		AFK.AFKMode.bottom.model:SetAnimation(67)
		AFK.AFKMode.bottom.model.idleDuration = 40
		AFK.startTime = GetTime()
		AFK.timer = K:ScheduleRepeatingTimer(AFK.UpdateTimer, 1)

		AFK.isAFK = true
	elseif(AFK.isAFK) then
		_G.UIParent:Show()
		AFK.AFKMode:Hide()
		MoveViewLeftStop()

		K:CancelTimer(AFK.timer)
		K:CancelTimer(AFK.animTimer)
		AFK.AFKMode.bottom.time:SetText("00:00")

		if (_G.PVEFrame:IsShown()) then -- odd bug, frame is blank
			PVEFrame_ToggleFrame()
			PVEFrame_ToggleFrame()
		end

		AFK.isAFK = false
	end
end

function AFK:OnEvent(event, ...)
	if (event == "PLAYER_REGEN_DISABLED" or event == "LFG_PROPOSAL_SHOW" or event == "UPDATE_BATTLEFIELD_STATUS") then
		if (event == "UPDATE_BATTLEFIELD_STATUS") then
			local status = GetBattlefieldStatus(...)
			if (status == "confirm") then
				AFK:SetAFK(false)
			end
		else
			AFK:SetAFK(false)
		end

		if (event == "PLAYER_REGEN_DISABLED") then
			K:RegisterEvent("PLAYER_REGEN_ENABLED", AFK.OnEvent)
		end
		return
	end

	if (event == "PLAYER_REGEN_ENABLED") then
		K:UnregisterEvent("PLAYER_REGEN_ENABLED", AFK.OnEvent)
	end

	if (not C["Misc"].AFKCamera) then
		return
	end

	if (InCombatLockdown() or CinematicFrame:IsShown() or MovieFrame:IsShown()) then
		return
	end

	if (UnitCastingInfo("player") ~= nil) then
		-- Don't activate afk if player is crafting stuff, check back in 30 seconds
		K:ScheduleTimer(AFK.OnEvent, 30)
		return
	end

	if (UnitIsAFK("player") and not C_PetBattles_IsInBattle()) then
		AFK:SetAFK(true)
	else
		AFK:SetAFK(false)
	end
end

function AFK:Toggle()
	if (C["Misc"].AFKCamera) then
		K:RegisterEvent("PLAYER_FLAGS_CHANGED", AFK.OnEvent)
		K:RegisterEvent("PLAYER_REGEN_DISABLED", AFK.OnEvent)
		K:RegisterEvent("LFG_PROPOSAL_SHOW", AFK.OnEvent)
		K:RegisterEvent("UPDATE_BATTLEFIELD_STATUS", AFK.OnEvent)
		SetCVar("autoClearAFK", "1")
	else
		K:UnregisterEvent("PLAYER_FLAGS_CHANGED", AFK.OnEvent)
		K:UnregisterEvent("PLAYER_REGEN_DISABLED", AFK.OnEvent)
		K:UnregisterEvent("LFG_PROPOSAL_SHOW", AFK.OnEvent)
		K:UnregisterEvent("UPDATE_BATTLEFIELD_STATUS", AFK.OnEvent)
	end
end

local function OnKeyDown(_, key)
	if (ignoreKeys[key]) then
		return
	end

	if printKeys[key] then
		Screenshot()
	else
		AFK:SetAFK(false)
		K:ScheduleTimer(AFK.OnEvent, 60)
	end
end

function AFK:LoopAnimations()
	local KKUI_AFKPlayerModel = _G.KKUI_AFKPlayerModel
	if KKUI_AFKPlayerModel.curAnimation == "wave" then
		KKUI_AFKPlayerModel:SetAnimation(69)
		KKUI_AFKPlayerModel.curAnimation = "dance"
		KKUI_AFKPlayerModel.startTime = GetTime()
		KKUI_AFKPlayerModel.duration = 300
		KKUI_AFKPlayerModel.isIdle = false
		KKUI_AFKPlayerModel.idleDuration = 120
	end
end

function AFK:CreateAFKCam()
	local classColor = K.MyClassColor

	self.AFKMode = CreateFrame("Frame", "KKUI_AFKFrame")
	self.AFKMode:SetFrameLevel(1)
	self.AFKMode:SetScale(_G.UIParent:GetScale())
	self.AFKMode:SetAllPoints(_G.UIParent)
	self.AFKMode:Hide()
	self.AFKMode:EnableKeyboard(true)
	self.AFKMode:SetScript("OnKeyDown", OnKeyDown)

	self.AFKMode.bottom = CreateFrame("Frame", nil, self.AFKMode)
	self.AFKMode.bottom:SetFrameLevel(0)
	self.AFKMode.bottom:CreateBorder()
	self.AFKMode.bottom:SetPoint("BOTTOM", self.AFKMode, "BOTTOM", 0, -6)
	self.AFKMode.bottom:SetWidth(GetScreenWidth() + (6 * 2))
	self.AFKMode.bottom:SetHeight(GetScreenHeight() * (1 / 10))

	self.AFKMode.bottom.logo = self.AFKMode:CreateTexture(nil, "OVERLAY")
	self.AFKMode.bottom.logo:SetSize(320, 150)
	self.AFKMode.bottom.logo:SetPoint("CENTER", self.AFKMode.bottom, "CENTER", 0, 55)
	self.AFKMode.bottom.logo:SetTexture(C["Media"].Logo)

	local factionGroup, size, offsetX, offsetY, nameOffsetX, nameOffsetY = K.Faction, 140, -20, -16, -10, -28
	if factionGroup == "Neutral" then
		factionGroup, size, offsetX, offsetY, nameOffsetX, nameOffsetY = "Panda", 90, 15, 10, 20, -5
	end

	self.AFKMode.bottom.faction = self.AFKMode.bottom:CreateTexture(nil, "OVERLAY")
	self.AFKMode.bottom.faction:SetPoint("BOTTOMLEFT", self.AFKMode.bottom, "BOTTOMLEFT", offsetX, offsetY)
	self.AFKMode.bottom.faction:SetTexture("Interface\\Timer\\"..factionGroup.."-Logo")
	self.AFKMode.bottom.faction:SetSize(size, size)

	self.AFKMode.bottom.name = self.AFKMode.bottom:CreateFontString(nil, "OVERLAY")
	self.AFKMode.bottom.name:FontTemplate(nil, 20)
	self.AFKMode.bottom.name:SetFormattedText(classColor.."%s-%s", K.Name, K.Realm)
	self.AFKMode.bottom.name:SetPoint("TOPLEFT", self.AFKMode.bottom.faction, "TOPRIGHT", nameOffsetX, nameOffsetY)

	self.AFKMode.bottom.guild = self.AFKMode.bottom:CreateFontString(nil, "OVERLAY")
	self.AFKMode.bottom.guild:FontTemplate(nil, 20)
	self.AFKMode.bottom.guild:SetText("No Guild")
	self.AFKMode.bottom.guild:SetPoint("TOPLEFT", self.AFKMode.bottom.name, "BOTTOMLEFT", 0, -6)
	self.AFKMode.bottom.guild:SetTextColor(0.7, 0.7, 0.7)

	self.AFKMode.bottom.time = self.AFKMode.bottom:CreateFontString(nil, "OVERLAY")
	self.AFKMode.bottom.time:FontTemplate(nil, 20)
	self.AFKMode.bottom.time:SetText("00:00")
	self.AFKMode.bottom.time:SetPoint("TOPLEFT", self.AFKMode.bottom.guild, "BOTTOMLEFT", 0, -6)
	self.AFKMode.bottom.time:SetTextColor(0.7, 0.7, 0.7)

	-- Use this frame to control position of the model
	self.AFKMode.bottom.modelHolder = CreateFrame("Frame", nil, self.AFKMode.bottom)
	self.AFKMode.bottom.modelHolder:SetSize(150, 150)
	self.AFKMode.bottom.modelHolder:SetPoint("BOTTOMRIGHT", self.AFKMode.bottom, "BOTTOMRIGHT", -200, 220)

	self.AFKMode.bottom.model = CreateFrame("PlayerModel", "KKUI_AFKPlayerModel", self.AFKMode.bottom.modelHolder)
	self.AFKMode.bottom.model:SetPoint("CENTER", self.AFKMode.bottom.modelHolder, "CENTER")
	self.AFKMode.bottom.model:SetSize(GetScreenWidth() * 2, GetScreenHeight() * 2) -- YES, double screen size. This prevents clipping of models. Position is controlled with the helper frame.
	self.AFKMode.bottom.model:SetCamDistanceScale(4.5) -- Since the model frame is huge, we need to zoom out quite a bit.
	self.AFKMode.bottom.model:SetFacing(6)
	self.AFKMode.bottom.model:SetScript("OnUpdate", function(self)
		local timePassed = GetTime() - self.startTime
		if (timePassed > self.duration) and self.isIdle ~= true then
			self:SetAnimation(0)
			self.isIdle = true
			AFK.animTimer = K:ScheduleTimer(AFK.LoopAnimations, self.idleDuration)
		end
	end)

	self:Toggle()
end