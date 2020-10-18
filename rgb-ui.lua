-- UPVALUES -----------------------------

local CreateFrame = CreateFrame
local FocusFrameSpellBar = FocusFrameSpellBar
local MainMenuBarArtFrame = MainMenuBarArtFrame

-- CONSTANTS ----------------------------

local ADDON_NAME, namespace = ...
local COMMAND = '/' .. ADDON_NAME
local DEBUG = nil -- true || nil

-- IMPORTS ------------------------------

local UTILS = namespace.UTILS

-- UI and FRAME -------------------------

local function opaqueUi()
  local elements
  local frame = CreateFrame('Frame')

  if (UTILS:isClassic() == true) then
    elements = {
      BonusActionBarTexture0,
      BonusActionBarTexture1,
      CastingBarFrameBorder,
      FocusFrameSpellBarBorder,
      MainMenuBarLeftEndCap,
      MainMenuBarRightEndCap,
      MainMenuBarTexture0,
      MainMenuBarTexture1,
      MainMenuBarTexture2,
      MainMenuBarTexture3,
      MainMenuMaxLevelBar0,
      MainMenuMaxLevelBar1,
      MainMenuMaxLevelBar2,
      MainMenuMaxLevelBar3,
      MainMenuXPBarTextureLeftCap,
      MainMenuXPBarTextureMid,
      MainMenuXPBarTextureRightCap,
      MiniMapBattlefieldBorder,
      MinimapBorder,
      MinimapBorderTop,
      MiniMapMailBorder,
      MiniMapTrackingButtonBorder,
      PartyMemberFrame1PetFrameTexture,
      PartyMemberFrame1Texture,
      PartyMemberFrame2PetFrameTexture,
      PartyMemberFrame2Texture,
      PartyMemberFrame3PetFrameTexture,
      PartyMemberFrame3Texture,
      PartyMemberFrame4PetFrameTexture,
      PartyMemberFrame4Texture,
      PetFrameTexture,
      PlayerFrameTexture,
      ReputationWatchBarTexture0,
      ReputationWatchBarTexture1,
      ReputationWatchBarTexture2,
      ReputationWatchBarTexture3,
      ReputationXPBarTexture0,
      ReputationXPBarTexture1,
      ReputationXPBarTexture2,
      ReputationXPBarTexture3,
      SlidingActionBarTexture0,
      SlidingActionBarTexture1,
      StanceBarLeft,
      StanceBarMiddle,
      StanceBarRight,
      TargetFrameTexture,
      TargetofTargetTexture,
      -- Others
      ExhaustionTick:GetNormalTexture(),
      _G[TargetFrameSpellBar:GetName() .. 'Border']
    }
  else
    -- Retail
    elements = {
      AlternatePowerBarBorder,
      AlternatePowerBarLeftBorder,
      AlternatePowerBarRightBorder,
      ArtifactWatchBar.StatusBar.WatchBarTexture0,
      ArtifactWatchBar.StatusBar.WatchBarTexture1,
      ArtifactWatchBar.StatusBar.WatchBarTexture2,
      ArtifactWatchBar.StatusBar.WatchBarTexture3,
      ArtifactWatchBar.StatusBar.XPBarTexture0,
      ArtifactWatchBar.StatusBar.XPBarTexture1,
      ArtifactWatchBar.StatusBar.XPBarTexture2,
      ArtifactWatchBar.StatusBar.XPBarTexture3,
      BonusActionBarFrameTexture0,
      BonusActionBarFrameTexture1,
      BonusActionBarFrameTexture2,
      BonusActionBarFrameTexture3,
      BonusActionBarFrameTexture4,
      BonusActionBarTexture0,
      BonusActionBarTexture1,
      Boss1TargetFrameSpellBar.Border,
      Boss1TargetFrameTextureFrameTexture,
      Boss2TargetFrameSpellBar.Border,
      Boss2TargetFrameTextureFrameTexture,
      Boss3TargetFrameSpellBar.Border,
      Boss3TargetFrameTextureFrameTexture,
      Boss4TargetFrameSpellBar.Border,
      Boss4TargetFrameTextureFrameTexture,
      Boss5TargetFrameSpellBar.Border,
      Boss5TargetFrameTextureFrameTexture,
      CastingBarFrame.Border,
      CastingBarFrameBorder,
      ComboPointPlayerFrame.Background,
      ComboPointPlayerFrame.Combo1.PointOff,
      ComboPointPlayerFrame.Combo2.PointOff,
      ComboPointPlayerFrame.Combo3.PointOff,
      ComboPointPlayerFrame.Combo4.PointOff,
      ComboPointPlayerFrame.Combo5.PointOff,
      ComboPointPlayerFrame.Combo6.PointOff,
      FocusFrameSpellBar.Border,
      FocusFrameSpellBarBorder,
      FocusFrameTextureFrameTexture,
      FocusFrameToTTextureFrameTexture,
      HonorWatchBar.StatusBar.WatchBarTexture0,
      HonorWatchBar.StatusBar.WatchBarTexture1,
      HonorWatchBar.StatusBar.WatchBarTexture2,
      HonorWatchBar.StatusBar.WatchBarTexture3,
      HonorWatchBar.StatusBar.XPBarTexture0,
      HonorWatchBar.StatusBar.XPBarTexture1,
      HonorWatchBar.StatusBar.XPBarTexture2,
      HonorWatchBar.StatusBar.XPBarTexture3,
      MainMenuBarLeftEndCap,
      MainMenuBarRightEndCap,
      MainMenuBarTexture0,
      MainMenuBarTexture1,
      MainMenuBarTexture2,
      MainMenuBarTexture3,
      MainMenuMaxLevelBar0,
      MainMenuMaxLevelBar1,
      MainMenuMaxLevelBar2,
      MainMenuMaxLevelBar3,
      MainMenuXPBarTextureLeftCap,
      MainMenuXPBarTextureMid,
      MainMenuXPBarTextureRightCap,
      MiniMapBattlefieldBorder,
      MinimapBorder,
      MinimapBorderTop,
      MiniMapLFGFrameBorder,
      MiniMapMailBorder,
      MiniMapTrackingButtonBorder,
      PartyMemberFrame1PetFrameTexture,
      PartyMemberFrame1Texture,
      PartyMemberFrame2PetFrameTexture,
      PartyMemberFrame2Texture,
      PartyMemberFrame3PetFrameTexture,
      PartyMemberFrame3Texture,
      PartyMemberFrame4PetFrameTexture,
      PartyMemberFrame4Texture,
      PetFrameTexture,
      PlayerFrameAlternateManaBarBorder,
      PlayerFrameAlternateManaBarLeftBorder,
      PlayerFrameAlternateManaBarRightBorder,
      PlayerFrameTexture,
      ReputationWatchBar.StatusBar.WatchBarTexture0,
      ReputationWatchBar.StatusBar.WatchBarTexture1,
      ReputationWatchBar.StatusBar.WatchBarTexture2,
      ReputationWatchBar.StatusBar.WatchBarTexture3,
      ReputationWatchBar.StatusBar.XPBarTexture0,
      ReputationWatchBar.StatusBar.XPBarTexture1,
      ReputationWatchBar.StatusBar.XPBarTexture2,
      ReputationWatchBar.StatusBar.XPBarTexture3,
      ReputationWatchBarTexture0,
      ReputationWatchBarTexture1,
      ReputationWatchBarTexture2,
      ReputationWatchBarTexture3,
      ReputationXPBarTexture0,
      ReputationXPBarTexture1,
      ReputationXPBarTexture2,
      ReputationXPBarTexture3,
      SlidingActionBarTexture0,
      SlidingActionBarTexture1,
      StanceBarLeft,
      StanceBarMiddle,
      StanceBarRight,
      TargetFrameSpellBar.Border,
      TargetFrameSpellBarBorder,
      TargetFrameTexture,
      TargetFrameTextureFrameTexture,
      TargetFrameToTTextureFrameTexture,
      TargetofTargetTexture,
      -- Others
      ExhaustionTick:GetNormalTexture(),
      _G[TargetFrameSpellBar:GetName() .. 'Border'],
      select(1, TimeManagerClockButton:GetRegions())
    }
  end

  frame:RegisterEvent('ADDON_LOADED')

  frame:SetScript(
    'OnEvent',
    function(self, event, addon)
      if (addon == 'Blizzard_TimeManager') then
        for i, v in pairs(elements) do
          v:SetVertexColor(.2, .2, .2)
          -- v:SetAlpha(0)
        end

        for i, v in pairs({select(2, TimeManagerClockButton:GetRegions())}) do
          v:SetVertexColor(1, 1, 1)
        end

        self:UnregisterEvent('ADDON_LOADED')
        frame:SetScript('OnEvent', nil)
      end
    end
  )
end

local function removeEagles()
  if (UTILS:isClassic() == true) then
    for i, v in pairs({MainMenuBarLeftEndCap, MainMenuBarRightEndCap}) do
      v:SetVertexColor(.2, .2, .2)
      v:SetAlpha(0)
    end
  else
    MainMenuBarArtFrame.LeftEndCap:Hide()
    MainMenuBarArtFrame.RightEndCap:Hide()
  end
end

local function scaleFocusBar()
  FocusFrameSpellBar:SetScale(1.4)
end

local function runOptions()
  opaqueUi()
  UTILS:log('applied opaqueUi')
  removeEagles()
  UTILS:log('applied removeEagles')
  scaleFocusBar()
  UTILS:log('applied scaleFocusBar')
end

-- COMMANDS -----------------------------

SlashCmdList['RGB_UI_SLASHCMD'] = function(msg)
  UTILS:log(msg)
  local command = string.lower(msg:match('^(%S*)%s*(.-)$'))
  if command == 'help' or command == '?' then
    UTILS:printHelp()
  end
end
RGB_UI_SLASHCMD1 = COMMAND

-- MAIN ---------------------------------

local function onLoad()
  UTILS:log('|cffc01300loaded')
  runOptions()
end

onLoad()
