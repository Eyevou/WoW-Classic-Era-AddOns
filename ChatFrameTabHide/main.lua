local f = CreateFrame("Frame", "CFTH_Frame", UIParent)

function CFTH_OnUpdate()

	if PartyMemberBuffTooltip:IsShown() then
		PartyMemberBuffTooltip:Hide()
	end

	if CFTH_TOGGLE == nil then
	
--		if ChatFrame1Tab:IsShown() then
--			ChatFrame1Tab:Hide()
--			ChatFrame1ButtonFrameUpButton:Hide()
--			ChatFrame1ButtonFrameDownButton:Hide()
--		end

		if ChatFrame2Tab:IsShown() then
			ChatFrame2Tab:Hide()
			ChatFrame2ButtonFrameUpButton:Hide()
			ChatFrame2ButtonFrameDownButton:Hide()
		end
		
	-- ChatFrame3 is CombatLog?
		
		if ChatFrame4Tab:IsShown() then
			ChatFrame4Tab:Hide()
			ChatFrame4ButtonFrameUpButton:Hide()
			ChatFrame4ButtonFrameDownButton:Hide()
		end
		
		if ChatFrame5Tab:IsShown() then
			ChatFrame5Tab:Hide()
			ChatFrame5ButtonFrameUpButton:Hide()
			ChatFrame5ButtonFrameDownButton:Hide()
		end
		
		if ChatFrame6Tab:IsShown() then
			ChatFrame6Tab:Hide()
			ChatFrame6ButtonFrameUpButton:Hide()
			ChatFrame6ButtonFrameDownButton:Hide()
		end

		if ChatFrame7Tab:IsShown() then
			ChatFrame7Tab:Hide()
			ChatFrame7ButtonFrameUpButton:Hide()
			ChatFrame7ButtonFrameDownButton:Hide()
		end

		if ChatFrame8Tab:IsShown() then
			ChatFrame8Tab:Hide()
			ChatFrame8ButtonFrameUpButton:Hide()
			ChatFrame8ButtonFrameDownButton:Hide()
		end

		if ChatFrame9Tab:IsShown() then
			ChatFrame9Tab:Hide()
			ChatFrame9ButtonFrameUpButton:Hide()
			ChatFrame9ButtonFrameDownButton:Hide()
		end	
	
	else

		if not ChatFrame1Tab:IsShown() and CFTH_ACTIVE1 then
			ChatFrame1Tab:Show()
			ChatFrame1ButtonFrameUpButton:Show()
			ChatFrame1ButtonFrameDownButton:Show()
		end
		
		if not ChatFrame2Tab:IsShown() and CFTH_ACTIVE2 then
			ChatFrame2Tab:Show()
			ChatFrame2ButtonFrameUpButton:Show()
			ChatFrame2ButtonFrameDownButton:Show()
		end
		
	-- ChatFrame3 is CombatLog?
		
		if not ChatFrame4Tab:IsShown() and CFTH_ACTIVE4 then
			ChatFrame4Tab:Show()
			ChatFrame4ButtonFrameUpButton:Show()
			ChatFrame4ButtonFrameDownButton:Show()
		end
		
		if not ChatFrame5Tab:IsShown() and CFTH_ACTIVE5 then
			ChatFrame5Tab:Show()
			ChatFrame5ButtonFrameUpButton:Show()
			ChatFrame5ButtonFrameDownButton:Show()
		end
		
		if not ChatFrame6Tab:IsShown() and CFTH_ACTIVE6 then
			ChatFrame6Tab:Show()
			ChatFrame6ButtonFrameUpButton:Show()
			ChatFrame6ButtonFrameDownButton:Show()
		end

		if not ChatFrame7Tab:IsShown() and CFTH_ACTIVE7 then
			ChatFrame7Tab:Show()
			ChatFrame7ButtonFrameUpButton:Show()
			ChatFrame7ButtonFrameDownButton:Show()
		end

		if not ChatFrame8Tab:IsShown() and CFTH_ACTIVE8 then
			ChatFrame8Tab:Show()
			ChatFrame8ButtonFrameUpButton:Show()
			ChatFrame8ButtonFrameDownButton:Show()
		end

		if not ChatFrame9Tab:IsShown() and CFTH_ACTIVE9 then
			ChatFrame9Tab:Show()
			ChatFrame9ButtonFrameUpButton:Show()
			ChatFrame9ButtonFrameDownButton:Show()
		end
	end
end

local function CFTH_WCHECK()
	if ChatFrame1Tab:IsShown() then
		CFTH_ACTIVE1 = true
	end
	if ChatFrame2Tab:IsShown() then
		CFTH_ACTIVE2 = true
	end
	if ChatFrame3Tab:IsShown() then
		CFTH_ACTIVE3 = true
	end
	if ChatFrame4Tab:IsShown() then
		CFTH_ACTIVE4 = true
	end
	if ChatFrame5Tab:IsShown() then
		CFTH_ACTIVE5 = true
	end
	if ChatFrame6Tab:IsShown() then
		CFTH_ACTIVE6 = true
	end
	if ChatFrame7Tab:IsShown() then
		CFTH_ACTIVE7 = true
	end
	if ChatFrame8Tab:IsShown() then
		CFTH_ACTIVE8 = true
	end
	if ChatFrame9Tab:IsShown() then
		CFTH_ACTIVE9 = true
	end
end

function CFTH_SlashCommand()
	CFTH_WCHECK()
	if CFTH_TOGGLE == nil then
		CFTH_TOGGLE = 1
		print("|cff82c5ffThe Chatframe tabs are now:|r |cffff2020VISIBLE.|r")
	else
		CFTH_TOGGLE = nil
		print("|cff82c5ffThe Chatframe tabs are now:|r |cffedd100HIDDEN.|r")
	end
end

SLASH_CFTH1 = "/CFTH"
SlashCmdList["CFTH"] = CFTH_SlashCommand;
	
f:SetScript("OnUpdate", CFTH_OnUpdate)