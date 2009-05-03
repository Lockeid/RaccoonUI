--UIParent:SetScale(0.76)

--== An easiest way to have the mouse focus ==--
    
SlashCmdList["MOUSEOVER"] = function()
    ChatFrame1:AddMessage('Your mouse is over '..GetMouseFocus():GetName())
end
SLASH_MOUSEOVER1 = "/mf"
SLASH_MOUSEOVER2 = "/frame"

 --== ReloadUI function ==-- 
SlashCmdList["RELOADUI"] = function()
    ReloadUI()
end
SLASH_RELOADUI1 = "/rl"


--== bottom panel ==--
local frameborder = "Interface\\AddOns\\RaccoonUI\\textures\\frameborder3"
local color_rb = 0
local color_gb = 0
local color_bb = 0
local alpha_fb = .35

local TopLeft = UIParent:CreateTexture(nil, "OVERLAY")
	TopLeft:SetTexture(frameborder)
	TopLeft:SetTexCoord(0, 1/3, 0, 1/3)
	TopLeft:SetPoint("BOTTOMLEFT", UIParent, 6, 0)
	TopLeft:SetWidth(30) TopLeft:SetHeight(30)
	TopLeft:SetVertexColor(color_rb,color_gb,color_bb,alpha_fb)

local TopRight = UIParent:CreateTexture(nil, "OVERLAY")
	TopRight:SetTexture(frameborder)
	TopRight:SetTexCoord(2/3, 1, 0, 1/3)
	TopRight:SetPoint("BOTTOMRIGHT", UIParent, -6, 0)
	TopRight:SetWidth(30) TopRight:SetHeight(30)
	TopRight:SetVertexColor(color_rb,color_gb,color_bb,alpha_fb)

local TopEdge = UIParent:CreateTexture(nil, "OVERLAY")
	TopEdge:SetTexture(frameborder)
	TopEdge:SetTexCoord(1/3, 2/3, 0, 1/3)
	TopEdge:SetPoint("TOPLEFT", TopLeft, "TOPRIGHT")
	TopEdge:SetPoint("TOPRIGHT", TopRight, "TOPLEFT")
	TopEdge:SetHeight(90)
	TopEdge:SetVertexColor(color_rb,color_gb,color_bb,alpha_fb)

local CenterLeft = UIParent:CreateTexture(nil,"OVERLAY")
	CenterLeft:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
	CenterLeft:SetPoint("BOTTOMLEFT",UIParent,"BOTTOMLEFT",17,0)
	CenterLeft:SetHeight(19); CenterLeft:SetWidth(19.4)
	CenterLeft:SetVertexColor(color_rb,color_gb,color_bb,alpha_fb)

local CenterRight = UIParent:CreateTexture(nil,"OVERLAY")
	CenterRight:SetTexture("Interface\\ChatFrame\\ChatFrameBackground")
	CenterRight:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT",-17,0)
	CenterRight:SetHeight(19); CenterRight:SetWidth(19.4)
	CenterRight:SetVertexColor(color_rb,color_gb,color_bb,alpha_fb)
--[[local f = CreateFrame("Frame", "Panel_Bottom", UIParent)
f:SetFrameStrata("BACKGROUND")
f:SetFrameLevel(1)
f:SetPoint("BOTTOMLEFT",UIParent,"BOTTOMLEFT",-5,-5)
f:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT",5,-5)
f:SetHeight(30)
f:SetBackdrop({
	bgFile = "Interface\\Buttons\\WHITE8x8",
	edgeFile = "Interface\\AddOns\\sTweak\\textures\\border2px",
	tile = true, tileSize = 8, edgeSize = 18,
	insets = {left = 1, right = 1, top = 1, bottom = 0},
})
f:SetBackdropColor(0, 0, 0, 1)
f:SetBackdropBorderColor(70/255,70/255,70/255,1)
f:Show()

local f = CreateFrame("Frame", "Panel_Bottom2", UIParent)
f:SetFrameStrata("BACKGROUND")
f:SetFrameLevel(2)
f:SetPoint("BOTTOMLEFT",UIParent,"BOTTOM",-190,3)
f:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOM",187,3)
f:SetHeight(74)
f:SetBackdrop({
	bgFile = "Interface\\Buttons\\WHITE8x8",
	edgeFile = "Interface\\AddOns\\sTweak\\textures\\border2px",
	tile = true, tileSize = 8, edgeSize = 18,
	insets = {left = 1, right = 1, top = 1, bottom = 0},
})
f:SetBackdropColor(0, 0, 0, 1)
f:SetBackdropBorderColor(70/255,70/255,70/255,1)
f:Show()]]

