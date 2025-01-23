local f = CreateFrame("Frame", "EraCensus_Frame", UIParent)
f:RegisterEvent("WHO_LIST_UPDATE")
f:RegisterEvent("CHAT_MSG_SYSTEM")

-- C_FriendList.GetNumWhoResults()
-- C_FriendList.SendWho("r-human c-warrior 1")
-- C_FriendList.GetWhoInfo(index)
-- C_FriendList.SetWhoToUi(whoToUi)
-- C_FriendList.SortWho(sorting)
-- CHAT_MSG_SYSTEM
-- HideUIPanel(FriendsFrame)
-- unregister friends frame

--[[
local p = C_FriendList.GetWhoInfo(1)
print(format("%s (level %d %s %s) is in %s", p.fullName, p.level, p.raceStr, p.classStr, p.area))
]]

local function EraCensus_Frame_OnEvent(self, event, ...)
	if event == "WHO_LIST_UPDATE" then
		C_FriendList.GetNumWhoResults()
	end
	if event == "CHAT_MSG_SYSTEM" then
		funcdebug("CHAT_MSG_SYSTEM triggered")
	end
end

local function EraCensus_Frame_OnUpdate()
end

function EraCensus_DO()
	C_FriendList.SendWho("Eyevou")
end

f:SetScript("OnEvent", EraCensus_Frame_OnEvent)
f:SetScript("OnUpdate", EraCensus_Frame_OnUpdate)