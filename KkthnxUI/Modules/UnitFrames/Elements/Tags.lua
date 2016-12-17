local K, C, L = unpack(select(2, ...))
if C.Unitframe.Enable ~= true and C.Raidframe.Enable ~= true then return end

-- Lua API
local floor = math.floor
local format = string.format

-- Wow API
local GetPVPTimer = GetPVPTimer
local GetQuestDifficultyColor = GetQuestDifficultyColor
local GetQuestGreenRange = GetQuestGreenRange
local GetRelativeDifficultyColor = GetRelativeDifficultyColor
local GetTime = GetTime
local IsPVPTimerRunning = IsPVPTimerRunning
local QuestDifficultyColors = QuestDifficultyColors
local UnitBattlePetLevel = UnitBattlePetLevel
local UnitClass = UnitClass
local UnitGroupRolesAssigned = UnitGroupRolesAssigned
local UnitGUID = UnitGUID
local UnitIsAFK = UnitIsAFK
local UnitIsBattlePetCompanion =UnitIsBattlePetCompanion
local UnitIsConnected = UnitIsConnected
local UnitIsDND = UnitIsDND
local UnitIsPlayer = UnitIsPlayer
local UnitIsPVP = UnitIsPVP
local UnitIsPVPFreeForAll = UnitIsPVPFreeForAll
local UnitIsUnit = UnitIsUnit
local UnitIsWildBattlePet = UnitIsWildBattlePet
local UnitLevel = UnitLevel
local UnitName = UnitName
local UnitPower = UnitPower
local UnitPowerMax = UnitPowerMax
local UnitReaction = UnitReaction

-- Global variables that we don"t cache, list them here for mikk"s FindGlobals script
-- GLOBALS: SPELL_POWER_MANA, UNKNOWN, Hex, Role C_PetJournal_GetPetTeamAverageLevel

local _, ns = ...
local oUF = ns.oUF or oUF

oUF.Tags.Events["KkthnxUI:GetNameColor"] = "UNIT_NAME_UPDATE"
oUF.Tags.Methods["KkthnxUI:GetNameColor"] = function(unit)
	local unitReaction = UnitReaction(unit, "player")
	local _, unitClass = UnitClass(unit)
	if (UnitIsPlayer(unit)) then
		local class = K.Colors.class[unitClass]
		if not class then return "" end
		return Hex(class[1], class[2], class[3])
	elseif (unitReaction) then
		local reaction = K.Colors.reaction[unitReaction]
		return Hex(reaction[1], reaction[2], reaction[3])
	else
		return Hex(194/255, 194/255, 194/255)
	end
end

-- We will just use this for now.
oUF.Tags.Events["KkthnxUI:NameColor"] = "UNIT_NAME_UPDATE"
oUF.Tags.Methods["KkthnxUI:NameColor"] = function(unit)
	return format("|cff%02x%02x%02x", 1 * 255, 1 * 255, 1 * 255)
end

oUF.Tags.Events["KkthnxUI:DruidMana"] = "UNIT_POWER UNIT_DISPLAYPOWER UNIT_MAXPOWER"
oUF.Tags.Methods["KkthnxUI:DruidMana"] = function(unit)
	local min, max = UnitPower(unit, SPELL_POWER_MANA), UnitPowerMax(unit, SPELL_POWER_MANA)
	if (min == max) then
		return K.UnitframeValue(min)
	else
		return K.UnitframeValue(min).."/"..K.UnitframeValue(max)
	end
end

oUF.Tags.OnUpdateThrottle["KkthnxUI:PvPTimer"] = 1
oUF.Tags.Methods["KkthnxUI:PvPTimer"] = function(unit)
	if (UnitIsPVPFreeForAll(unit) or UnitIsPVP(unit)) then
		local pvpTime = (GetPVPTimer() or 0)/1000
		if (not IsPVPTimerRunning()) or (pvpTime < 1) or (pvpTime > 300) then --999?
			return ""
		end

		return K.FormatTime(floor(pvpTime))
	end
end

oUF.Tags.Events["KkthnxUI:DifficultyColor"] = "UNIT_LEVEL PLAYER_LEVEL_UP"
oUF.Tags.Methods["KkthnxUI:DifficultyColor"] = function(unit)
	local r, g, b = 0.55, 0.57, 0.61
	if ( UnitIsWildBattlePet(unit) or UnitIsBattlePetCompanion(unit) ) then
		local level = UnitBattlePetLevel(unit)
		local teamLevel = C_PetJournal_GetPetTeamAverageLevel()
		if teamLevel < level or teamLevel > level then
			local c = GetRelativeDifficultyColor(teamLevel, level)
			r, g, b = c.r, c.g, c.b
		else
			local c = QuestDifficultyColors["difficult"]
			r, g, b = c.r, c.g, c.b
		end
	else
		local DiffColor = UnitLevel(unit) - UnitLevel("player")
		if (DiffColor >= 5) then
			r, g, b = 0.69, 0.31, 0.31
		elseif (DiffColor >= 3) then
			r, g, b = 0.71, 0.43, 0.27
		elseif (DiffColor >= -2) then
			r, g, b = 0.84, 0.75, 0.65
		elseif (-DiffColor <= GetQuestGreenRange()) then
			r, g, b = 0.33, 0.59, 0.33
		else
			r, g, b = 0.55, 0.57, 0.61
		end
	end
	return Hex(r, g, b)
end

oUF.Tags.Events["KkthnxUI:Level"] = "UNIT_LEVEL PLAYER_LEVEL_UP"
oUF.Tags.Methods["KkthnxUI:Level"] = function(unit)
	local level = UnitEffectiveLevel(unit)

	if UnitIsWildBattlePet(unit) or UnitIsBattlePetCompanion(unit) then
		level = UnitBattlePetLevel(unit)
	end

	if level > 0 then
		return level
	else
		return "??"
	end
end

oUF.Tags.Events["KkthnxUI:NameVeryShort"] = "UNIT_NAME_UPDATE"
oUF.Tags.Methods["KkthnxUI:NameVeryShort"] = function(unit)
	local Name = UnitName(unit) or UNKNOWN
	return K.UTF8Sub(Name, 6, true)
end

oUF.Tags.Events["KkthnxUI:NameShort"] = "UNIT_NAME_UPDATE"
oUF.Tags.Methods["KkthnxUI:NameShort"] = function(unit)
	local Name = UnitName(unit) or UNKNOWN
	return K.UTF8Sub(Name, 8, true)
end

oUF.Tags.Events["KkthnxUI:NameMedium"] = "UNIT_NAME_UPDATE"
oUF.Tags.Methods["KkthnxUI:NameMedium"] = function(unit)
	local Name = UnitName(unit) or UNKNOWN
	return K.UTF8Sub(Name, 15, true)
end

oUF.Tags.Events["KkthnxUI:NameLong"] = "UNIT_NAME_UPDATE"
oUF.Tags.Methods["KkthnxUI:NameLong"] = function(unit)
	local Name = UnitName(unit) or UNKNOWN
	return K.UTF8Sub(Name, 20, true)
end

local unitStatus = {}
oUF.Tags.OnUpdateThrottle["KkthnxUI:StatusTimer"] = 1
oUF.Tags.Methods["KkthnxUI:StatusTimer"] = function(unit)
	if not UnitIsPlayer(unit) then return end
	local guid = UnitGUID(unit)
	if (UnitIsAFK(unit)) then
		if not unitStatus[guid] or unitStatus[guid] and unitStatus[guid][1] ~= "AFK" then
			unitStatus[guid] = {"AFK", GetTime()}
		end
	elseif(UnitIsDND(unit)) then
		if not unitStatus[guid] or unitStatus[guid] and unitStatus[guid][1] ~= "DND" then
			unitStatus[guid] = {"DND", GetTime()}
		end
	else
		unitStatus[guid] = nil
	end
	if unitStatus[guid] ~= nil then
		local status = unitStatus[guid][1]
		local timer = GetTime() - unitStatus[guid][2]
		local mins = floor(timer / 60)
		local secs = floor(timer - (mins * 60))
		return ("%s (%01.f:%02.f)"):format(status, mins, secs)
	else
		return ""
	end
end

oUF.Tags.Events["KkthnxUI:RaidRole"] = "GROUP_ROSTER_UPDATE PLAYER_ROLES_ASSIGNED"
oUF.Tags.Methods["KkthnxUI:RaidRole"] = function(unit)
	local role = UnitGroupRolesAssigned(unit)
	if role then
		if role == "TANK" then
			return "|cff0070DET|r"
		elseif role == "HEALER" then
			return "|cff00CC12H|r"
		elseif role == "DAMAGER" then
			return "" -- We do not need to be spammed :D
		elseif role == "NONE" then
			return ""
		end

		return Role
	else
		return ""
	end
end