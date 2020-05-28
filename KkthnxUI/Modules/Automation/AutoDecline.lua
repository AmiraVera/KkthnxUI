local K, C = unpack(select(2, ...))
local Module = K:GetModule("Automation")

local _G = _G

local CancelDuel = _G.CancelDuel
local StaticPopup_Hide = _G.StaticPopup_Hide
local C_PetBattles_CancelPVPDuel = _G.C_PetBattles.CancelPVPDuel

function Module:DUEL_REQUESTED()
	CancelDuel()
	StaticPopup_Hide("DUEL_REQUESTED")
end

function Module:PET_BATTLE_PVP_DUEL_REQUESTED()
	C_PetBattles_CancelPVPDuel()
	StaticPopup_Hide("PET_BATTLE_PVP_DUEL_REQUESTED")
end

function Module:CreateAutoDeclineDuels()
	if not C["Automation"].AutoDeclineDuels then
		return
	end

	K:RegisterEvent("DUEL_REQUESTED", self.DUEL_REQUESTED)
	K:RegisterEvent("PET_BATTLE_PVP_DUEL_REQUESTED", self.PET_BATTLE_PVP_DUEL_REQUESTED)
end