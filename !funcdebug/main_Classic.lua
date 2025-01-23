local f = CreateFrame("Frame", "funcdebug_Frame", UIParent)
f:RegisterEvent("ADDON_LOADED")

local function funcdebug_Frame_OnEvent(self, event, ...)		
	if event == "ADDON_LOADED" then
		if funcdebug_ToggleOnce == nil then
			funcdebug_Frame:Show()
			funcdebug_ToggleOnce = 1
		end
	end
end

f:SetScript("OnEvent", funcdebug_Frame_OnEvent)