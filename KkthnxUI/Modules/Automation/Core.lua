local K = unpack(select(2, ...))
local Module = K:NewModule("Automation")

function Module:OnEnable()
    self:CreateAutoAcceptSummon()
    self:CreateAutoBadBuffs()
    self:CreateAutoBestReward()
    self:CreateAutoDeclineDuels()
    self:CreateAutoInvite()
    self:CreateAutoPartySyncAccept()
    self:CreateAutoRelease()
    self:CreateAutoResurrect()
    self:CreateAutoScreenShot()
    self:CreateAutoSetRole()
    self:CreateAutoTabBinder()
    self:CreateAutoWhisperInvite()
end