-- MainScene
-- Lesson10

-- Created by: warsame
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the second scene

MainScene = class()
local playButton
local settingsButton
local creditsButton
--global to this file


function MainScene:init()
playButton = Button("Dropbox:Blue Forward Circle Button", vec2(WIDTH/2, HEIGHT/2))
settingsButton = Button("Dropbox:Blue Settings Button", vec2(80, 80, 100, 100))

    
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(186, 186, 186, 255)
    playButton:draw()
    settingsButton:draw()
    
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    playButton:touched(touch)
    if(playButton.selected == true) then
        Scene.Change("tutorial")
    end
end