-- Main
-- FinalAppGroup6

    -- Created by: Alessandro Iaderosa
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the main starting point 

--global variables
worldLevel = nil
levelNumber = nil

-- Use this function to perform your initial setup
function setup()
    
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
   -- sprite("Dropbox:Icon 5")
    
    -- create the scenes
  --  music("A Hero's Quest:Hero's Triumph", true, 1.0)
    Scene("splash", SplashScreenScene)
    Scene("logo", GameLogoScene)
    Scene("play", MainScene)
    Scene("endGame", GameOverScene)
    Scene("tutorial", TutorialScene)
    Scene("settings", SettingsScene)
    Scene("credits", CreditsScene)
    Scene("getStars", StarsCollect)
    Scene("unlock", Unlock)
    Scene("store", Store)
    Scene("leaderBoard", Ranking)
    Scene("world", WorldScene)
    Scene("medium", MediumWorldScene)
    Scene("easy", EasyWorldScene)
    Scene("hard", HardWorldScene)
    Scene("game", GameScene)
    Scene("pause", PauseScene)
    Scene("over", GameOverScene)
    Scene.Change("splash")
    
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(255, 255, 255, 255)
    
    Scene.Draw()
end

function touched(touch)
    
    Scene.Touched(touch) 
    
    
    
end