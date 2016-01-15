-- Main
-- Group6

 -- Created by: allesandro
-- Created on: Nov - 2015
-- Created for: ICS2O
-- this is the pause page

PauseScene = class()
local playButton
function PauseScene:init()
    -- you can accept and set parameters here
    
    playButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/2, HEIGHT/2))

end

function PauseScene:draw()
    -- Codea does not automatically call this method
    playButton:draw()
end

function PauseScene:touched(touch)
    -- Codea does not automatically call this method
    playButton:touched(touch)
    if(playButton.selected == true) then
        Scene.Change("Level")
    end
end
