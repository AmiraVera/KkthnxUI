if (GetLocale() ~= "zhTW") then return end

-- Localization for zhTW

local PerformanceSlight = "\n|cffFF0000禁用此功能可能會輕微提升運行速度|r" -- For semi-high CPU options
local ToggleOffReminder = "\n|cffFF0000關閉此項可以手動輸入數值|r"

-- Actionbar
UIConfigLocal.ActionBarBottomBars = "底部動作條數量(1, 2 or 3)"
UIConfigLocal.ActionBarButtonSize = "動作條大小"
UIConfigLocal.ActionBarButtonSpace = "動作條間距"
UIConfigLocal.ActionBarEnable = "啟用動作條"
UIConfigLocal.ActionBarEquipBorder = "已裝備物品周圍顯示綠色邊框"
UIConfigLocal.ActionBarGrid = "顯示動作條空位"
UIConfigLocal.ActionBarHideHighlight = "隱藏按鍵周圍閃光"
UIConfigLocal.ActionBarHotkey = "顯示按鍵綁定"
UIConfigLocal.ActionBarMacro = "顯示宏名稱"
UIConfigLocal.ActionBarOutOfMana = "低魔法值染色"
UIConfigLocal.ActionBarOutOfRange = "超出距離染色"
UIConfigLocal.ActionBarPetBarHide = "隱藏寵物動作條"
UIConfigLocal.ActionBarPetBarHorizontal = "寵物動作條水平顯示"
UIConfigLocal.ActionBarPetBarMouseover = "寵物動作條鼠標懸停可見(只對水平寵物血條起作用)"
UIConfigLocal.ActionBarRightBars = "右側動作條數量(0、1、2或3)"
UIConfigLocal.ActionBarRightBarsMouseover = "右側動作條鼠標懸停可見"
UIConfigLocal.ActionBarSelfCast = "右鍵點擊時總是自我施法(無論當前目標是什麽)"
UIConfigLocal.ActionBarSplitBars = "第五動作條分為各6個空位的2個動作條"
UIConfigLocal.ActionBarStanceBarHide = "隱藏姿態條"
UIConfigLocal.ActionBarStanceBarHorizontal = "開啟水平姿態條"
UIConfigLocal.ActionBarStanceBarMouseover = "姿態條鼠標懸停可見"
UIConfigLocal.ActionBarToggleMode = "啟用動作條數量切換模式"..ToggleOffReminder

-- Announcements
UIConfigLocal.Announcements = "通告"
UIConfigLocal.AnnouncementsInterrupt = "打斷時通知隊友"
UIConfigLocal.AnnouncementsPullCountdown = "啟用簡單命令/pc開始拉怪計時"
UIConfigLocal.AnnouncementsSaySapped = "|cFFFFF569潛行者|r悶棍妳時立刻通知周圍的人"

-- Automation
UIConfigLocal.Automation = "自動化"
UIConfigLocal.AutomationAutoCollapse = "在副本中自動折疊任務追蹤"
UIConfigLocal.AutomationAutoInvite = "自動接受邀請(好友/公會成員)"
UIConfigLocal.AutomationDeclineDuel = "自動拒絕決鬥請求"
UIConfigLocal.AutomationResurrection = "自動在戰場中釋放屍體"
UIConfigLocal.AutomationScreenShot = "獲得成就時自動截屏"

-- Bag
UIConfigLocal.Bags = "背包"
UIConfigLocal.BagsButtonSize = "背包格子大小"
UIConfigLocal.BagsEnable = "啟用背包"
UIConfigLocal.BagsInsertLeftToRight = "拾取的物品自動放入空閑空間最大的背包"
UIConfigLocal.BagsItemsPerRow = "每行顯示格子數量"
UIConfigLocal.BagsSortRightToLeft = "自右向左，自下而上整理背包"
UIConfigLocal.BagsSpacing = "背包格子間距"

-- Blizzard
UIConfigLocal.Blizzard = "暴雪框體"
UIConfigLocal.BlizzardColorTextures = "更改大多數UI材質色調顏色"
UIConfigLocal.BlizzardRaidTools = "團隊工具"
UIConfigLocal.BlizzardReplaceBlizzardFonts = "替換各框體|cff00B4FF默認字體|r為|cff3c9bedKkthnxUI|r字體"
UIConfigLocal.BlizzardReputationGain = "顯示聲望獲得信息"
UIConfigLocal.BlizzardTalkingHeadScale = "NPC語音信息框縮放"
UIConfigLocal.BlizzardTexturesColor = "UI材質色調顏色(默認為職業顏色)"

-- DataBars
UIConfigLocal.DataBars = "經驗信息條"
UIConfigLocal.DataBarsArtifactColor = "神器條顏色"
UIConfigLocal.DataBarsArtifactEnable = "開啟神器條"
UIConfigLocal.DataBarsArtifactFade = "神器條漸隱"
UIConfigLocal.DataBarsArtifactHeight = "神器條高度"
UIConfigLocal.DataBarsArtifactWidth = "神器條寬度"
UIConfigLocal.DataBarsExperienceColor = "經驗條顏色"
UIConfigLocal.DataBarsExperienceEnable = "開啟經驗條"
UIConfigLocal.DataBarsExperienceFade = "經驗條漸隱"
UIConfigLocal.DataBarsExperienceHeight = "經驗條高度"
UIConfigLocal.DataBarsExperienceRestedColor = "經驗條充分休息顏色"
UIConfigLocal.DataBarsExperienceWidth = "經驗條長度"
UIConfigLocal.DataBarsHonorColor = "榮譽條顏色"
UIConfigLocal.DataBarsHonorEnable = "開啟榮譽條"
UIConfigLocal.DataBarsHonorFade = "榮譽條漸隱"
UIConfigLocal.DataBarsHonorHeight = "榮譽條高度"
UIConfigLocal.DataBarsHonorWidth = "榮譽條長度"
UIConfigLocal.DataBarsInfoText = "信息條上顯示數值"
UIConfigLocal.DataBarsReputationEnable = "開啟聲望條"
UIConfigLocal.DataBarsReputationFade = "聲望條漸隱"
UIConfigLocal.DataBarsReputationHeight = "聲望條高度"
UIConfigLocal.DataBarsReputationWidth = "聲望條寬度"

-- Auras
UIConfigLocal.Auras = "光環"
UIConfigLocal.AurasAnimation = "給光環加入彈出特效"..PerformanceSlight
UIConfigLocal.AurasBuffsPerRow = "每壹行光環顯示數量"
UIConfigLocal.AurasCastBy = "鼠標提示上顯示光環釋放者"
UIConfigLocal.AurasConsolidate = "合並光環"
UIConfigLocal.AurasEnable = "開啟光環顯示"
UIConfigLocal.AurasFlash = "光環剩余時間不多時閃爍"..PerformanceSlight
UIConfigLocal.AurasHideBuffs = "關閉增益顯示"
UIConfigLocal.AurasHideDebuffs = "關閉減益顯示"

-- Chat
UIConfigLocal.ChatBubbleBackdrop = "移除聊天泡泡背景"
UIConfigLocal.ChatDamageMeterSpam = "傷害統計刷屏合並在壹行內顯示"
UIConfigLocal.ChatEnable = "開啟聊天模塊"
UIConfigLocal.ChatFading = "在壹定時間後聊天信息漸隱"
UIConfigLocal.ChatFadingTimeVisible = "設置多少秒後聊天信息漸隱"
UIConfigLocal.ChatFadingTimeFading = "設置聊天信息漸隱過程需要多少秒"
UIConfigLocal.ChatHeight = "聊天窗口高度"
UIConfigLocal.ChatLinkBrackets = "網址顯示在括號中"
UIConfigLocal.ChatLinkColor = "設置網址顯示顏色"
UIConfigLocal.ChatMessageFilter = "移除壹些系統通知(決鬥勝利)"
UIConfigLocal.ChatOutline = "聊天字體加入描邊"
UIConfigLocal.ChatScrollByX = "聊天框滾動行數"
UIConfigLocal.ChatSpamFilter = "過濾交易頻道中的垃圾信息"
UIConfigLocal.ChatTabsMouseover = "聊天標簽鼠標懸停可見"
UIConfigLocal.ChatTabsOutline = "聊天標簽字體加入描邊"
UIConfigLocal.ChatWhispSound = "收到密語時播放提示音"
UIConfigLocal.ChatWidth = "聊天窗口寬度"

-- DataText
UIConfigLocal.DataText = "數據信息條"
UIConfigLocal.DataTextBattleground = "顯示戰場重要信息"
UIConfigLocal.DataTextLocalTime = "顯示本機時間"
UIConfigLocal.DataTextSystem = "小地圖下方顯示幀數和延時"
UIConfigLocal.DataTextTime = "小地圖下方顯示時間信息"
UIConfigLocal.DataTextTime24Hr = "時間顯示為24小時制"

-- Error
UIConfigLocal.Error = "錯誤提示"
UIConfigLocal.ErrorBlack = "隱藏黑名單中的錯誤提示"
UIConfigLocal.ErrorWhite = "顯示白名單中的錯誤提示"
UIConfigLocal.ErrorCombat = "戰鬥中隱藏所有錯誤提示"

-- Cooldown
UIConfigLocal.Cooldown = "冷卻"
UIConfigLocal.CooldownEnable = "開啟冷卻模塊"
UIConfigLocal.CooldownFontSize = "冷卻數字大小"
UIConfigLocal.CooldownThreshold = "冷卻觸發閾值"

-- General
UIConfigLocal.GeneralAutoScale = "自動縮放UI"
UIConfigLocal.GeneralBubbleFontSize = "聊天泡泡文字大小"
UIConfigLocal.GeneralDisableTutorialButtons = "禁用壹些框體上的教學按鈕"
UIConfigLocal.GeneralTaintLog = "錯誤記錄"
UIConfigLocal.GeneralToggleButton = "小地圖下顯示設置按鈕(需要開啟信息條系統)"
UIConfigLocal.GeneralUIScale = "UI縮放（如果自動縮放被禁用）"
UIConfigLocal.GeneralUseBlizzardFonts = "使用默認字體"
UIConfigLocal.GeneralUseFlatTextures = "使用“平坦”材質"
UIConfigLocal.GeneralWelcomeMessage = "聊天窗內顯示歡迎信息"

-- Loot
UIConfigLocal.LootConfirmDisenchant = "自動確認分解物品"
UIConfigLocal.LootAutoGreed = "滿級時開啟綠裝自動貪婪和分解"
UIConfigLocal.LootEnable = "開啟拾取窗口"
UIConfigLocal.LootIconSize = "圖標大小"
UIConfigLocal.LootGroupLoot = "開啟隊伍拾取窗口"
UIConfigLocal.LootWidth = "拾取窗口寬度"

-- Minimap
UIConfigLocal.Minimap = "小地圖"
UIConfigLocal.MinimapCalendar = "小地圖顯示日歷按鈕"
UIConfigLocal.MinimapCollectButtons = "壹些小地圖按鈕收集在壹行中"
UIConfigLocal.MinimapEnable = "開啟方形小地圖"
UIConfigLocal.MinimapFadeButtons = "被收集的按鈕漸隱"
UIConfigLocal.MinimapGarrison = "小地圖顯示要塞圖標"
UIConfigLocal.MinimapSize = "小地圖尺寸 - 默認150"

-- Misc
UIConfigLocal.Misc = "其他"
UIConfigLocal.MiscAFKCamera = "AFK時自動轉動鏡頭"
UIConfigLocal.MiscAutoRepair = "自動修理物品"
UIConfigLocal.MiscAutoSellGrays = "自動出售灰色物品"
UIConfigLocal.MiscBGSpam = "戰場中不顯示BOSS喊話"
UIConfigLocal.MiscColorPicker = "顏色拾取器增強"
UIConfigLocal.MiscCombatState = "在屏幕頂部顯示進入/離開戰鬥"
UIConfigLocal.MiscEnhancedPvpMessages = "屏幕中間顯示戰場信息"
UIConfigLocal.MiscItemLevel = "裝備欄顯示物品等級"
UIConfigLocal.MiscNoBanner = "隱藏BOSS拾取結果（個人拾取時）"
UIConfigLocal.MiscPvPEmote = "在您獲得擊殺後對對方玩家做壹個隨機動作"
UIConfigLocal.MiscSellMisc = "自動出售除灰色物品外的無用物品"
UIConfigLocal.MiscSlotDurability = "裝備欄顯示耐久度"
UIConfigLocal.MiscUseGuildRepair = "優先使用公會修理"

-- Nameplates
UIConfigLocal.Nameplates = "姓名板"
UIConfigLocal.NameplatesAdditionalHeight = "目標姓名板加高"
UIConfigLocal.NameplatesAdditionalWidth = "目標姓名板加寬"
UIConfigLocal.NameplatesAurasSize = "減益尺寸"
UIConfigLocal.NameplatesBadColor = "仇恨錯誤染色"
UIConfigLocal.NameplatesCastbarName = "顯示施法條名稱"
UIConfigLocal.NameplatesCastUnitReaction = "非玩家單位施法條根據可否打斷染色"
UIConfigLocal.NameplatesClamp = "屏幕外姓名板堆疊"
UIConfigLocal.NameplatesDistance = "在此範圍內顯示姓名板"
UIConfigLocal.NameplatesEnable = "啟用姓名板"
UIConfigLocal.NameplatesEnhancedThreat = "啟用仇恨功能，根據您的角色自動變化"
UIConfigLocal.NameplatesGoodColor = "仇恨正確染色"
UIConfigLocal.NameplatesHealerIcon = "戰場中顯示職業圖標"
UIConfigLocal.NameplatesHealthValue = "生命條數值"
UIConfigLocal.NameplatesHeight = "姓名板高度"
UIConfigLocal.NameplatesNameAbbreviate = "縮寫18個字符以上名稱"
UIConfigLocal.NameplatesNearColor = "損失/獲得仇恨"
UIConfigLocal.NameplatesOffTankColor = "副T仇恨染色"
UIConfigLocal.NameplatesSmooth = "生命條平滑過渡效果"
UIConfigLocal.NameplatesTotemIcons = "圖騰姓名板上顯示圖標"
UIConfigLocal.NameplatesTrackAuras = "顯示減益（顯示名單上的減益）"
UIConfigLocal.NameplatesWidth = "姓名板寬度"

-- Config GUI Buttons
UIConfigLocal.ConfigApplyButton = "應用"
UIConfigLocal.ConfigButtonReset = "復位"
UIConfigLocal.ConfigCloseButton = "關閉"

-- Config Static Popups
UIConfigLocal.ConfigPerChar = "確定設置只針對當前人物？"
UIConfigLocal.ConfigResetAll = "確定重置所有|cff3c9bedKkthnxUI|r設置？"
UIConfigLocal.ConfigResetChar = "確定重置當前人物|cff3c9bedKkthnxUI|r設置？?"
UIConfigLocal.ConfigSetSavedSettings = "設置只針對當前人物"

-- Skins
UIConfigLocal.Skins = "插件皮膚"
UIConfigLocal.SkinsBigWigs = "BigWigs"
UIConfigLocal.SkinsChatBubble = "聊天泡泡"
UIConfigLocal.SkinsDBM = "首領技能提示DBM"
UIConfigLocal.SkinsDBMMove = "允許移動DBM計時條"
UIConfigLocal.SkinsMinimapButtons = "小地圖按鈕"
UIConfigLocal.SkinsRecount = "Recount"
UIConfigLocal.SkinsSkada = "Skada"
UIConfigLocal.SkinsSpy = "Spy"
UIConfigLocal.SkinsWeakAuras = "WeakAuras"

-- Tooltip
UIConfigLocal.Tooltip = "鼠標提示"
UIConfigLocal.TooltipAchievements = "成就對比"
UIConfigLocal.TooltipCursor = "隨鼠標移動"
UIConfigLocal.TooltipEnable = "啟用鼠標提示"
UIConfigLocal.TooltipHealthValue = "生命數值顯示"
UIConfigLocal.TooltipItemCount = "物品數量"
UIConfigLocal.TooltipItemIcon = "物品圖標"
UIConfigLocal.TooltipRank = "按下shift時在鼠標提示上顯示目標公會聲望等級"
UIConfigLocal.TooltipSpellID = "法術ID"
UIConfigLocal.TooltipTalents = "顯示玩家的專精"

-- Unitframe
UIConfigLocal.Unitframe = "單位框架"
UIConfigLocal.UnitframeCastbarHeight = "施法條高度"
UIConfigLocal.UnitframeCastbarIcon = "顯示施法條圖標"
UIConfigLocal.UnitframeCastbarLatency = "施法時顯示延遲（只對玩家有效）"
UIConfigLocal.UnitframeCastbars = "顯示施法條"
UIConfigLocal.UnitframeCastbarTicks = "引導法術施法時顯示斷點"
UIConfigLocal.UnitframeCastbarWidth = "施法條長度"
UIConfigLocal.UnitframeCastClassColor = "玩家單位施法條根據職業染色"
UIConfigLocal.UnitframeCastUnitReaction = "非玩家單位施法條根據可否打斷染色"
UIConfigLocal.UnitframeClassPortraits = "頭像顯示職業圖標"
UIConfigLocal.UnitframeCombatText = "顯示傷害數字"
UIConfigLocal.UnitframeEnable = "顯示單位框體"
UIConfigLocal.UnitframeGCDBar = "玩家框體上顯示公共冷卻提示"
UIConfigLocal.UnitframeParty = "啟用小隊框架"
UIConfigLocal.UnitframePlayerDebuffsOnly = "只對玩家釋放的減益染色"
UIConfigLocal.UnitframePortraitTimer = "在頭像上顯示計時"
UIConfigLocal.UnitframePowerPredictionBar = "魔法消耗預估（施法時顯示預估的魔法消耗量）"
UIConfigLocal.UnitframeScale = "縮放壹些單位框架"
UIConfigLocal.UnitframeShowArena = "啟用競技場框架"
UIConfigLocal.UnitframeShowBoss = "啟用首領框架"
UIConfigLocal.UnitframeShowPlayer = "在小隊中顯示自身"
UIConfigLocal.UnitframeSmooth = "生命條及法力條平滑過渡效果"
UIConfigLocal.UnitframeStyle = "使單位框架看起來“厚fat或薄normal”"
UIConfigLocal.UnitframeThreatGlow = "單位框架四周仇恨提示閃光"
UIConfigLocal.UnitframeThreatValue = "玩家框體上方顯示仇恨數值"

-- Raidframe
UIConfigLocal.Raidframe = "團隊框架"
UIConfigLocal.RaidframeAuraWatch = "邊角指示器"
UIConfigLocal.RaidframeDeficitThreshold = "損失生命值顯示閾值"
UIConfigLocal.RaidframeEnable = "啟用團隊框架"
UIConfigLocal.RaidframeHeight = "團隊框架高度"
UIConfigLocal.RaidframeIconSize = "減益圖標大小"
UIConfigLocal.RaidframeMainTankFrames = "團隊中顯示主坦克/助手框體"
UIConfigLocal.RaidframeManabarShow = "顯示法力條"
UIConfigLocal.RaidframeMaxUnitPerColumn = "每列顯示多少單位"
UIConfigLocal.RaidframeRaidAsParty = "小隊中以團隊框架形式顯示"
UIConfigLocal.RaidframeScale = "團隊框架縮放"
UIConfigLocal.RaidframeShowMouseoverHighlight = "鼠標指向高亮"
UIConfigLocal.RaidframeShowNotHereTimer = "顯示AFK/掉線計時"
UIConfigLocal.RaidframeShowResurrectText = "顯示正在復活標記"
UIConfigLocal.RaidframeShowRolePrefix = "顯示職責"
UIConfigLocal.RaidframeShowThreatText = "顯示仇恨文字"
UIConfigLocal.RaidframeSmooth = "生命條及法力條平滑過渡效果"
UIConfigLocal.RaidframeWidth = "團隊框架長度"

-- WorldMap
UIConfigLocal.WorldMap = "世界地圖"
UIConfigLocal.WorldMapAlphaWhenMoving = "移動時世界地圖透明度"
UIConfigLocal.WorldMapCoordinates = "世界地圖上顯示坐標"
UIConfigLocal.WorldMapFadeWhenMoving = "移動時漸隱地圖"
UIConfigLocal.WorldMapSmallWorldMap = "使世界地圖更小壹些"
