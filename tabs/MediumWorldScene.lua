MediumWorldScene = class()
local MediumWorldSceneBackButton
local mediumLevel1Button
local mediumLevel2Button
local mediumLevel3Button
local mediumLevel4Button
local mediumLevel5Button
function MediumWorldScene:init(x)
    -- you can accept and set parameters here
    MediumWorldSceneBackButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 710, 100, 100))
    mediumLevel1Button = Button("Dropbox:Blue Level Menu Button", vec2(150, 550, 100, 100))
    mediumLevel2Button = Button("Dropbox:Blue Level Menu Button", vec2(350, 550, 100, 100))
    mediumLevel3Button = Button("Dropbox:Blue Level Menu Button", vec2(550, 550, 100, 100))
    mediumLevel4Button = Button("Dropbox:Blue Level Menu Button", vec2(750, 550, 100, 100))
    
    
end

function MediumWorldScene:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:GoldGlitterbackground", 512, 384, 1024, 768)
    -- background(6, 255, 0, 255)
    MediumWorldSceneBackButton:draw()
    mediumLevel1Button:draw()
    mediumLevel2Button:draw()
    mediumLevel3Button:draw()
    mediumLevel4Button:draw()
    
end

function MediumWorldScene:touched(touch)
    -- Codea does not automatically call this method
    MediumWorldSceneBackButton:touched(touch)
    if(MediumWorldSceneBackButton.selected == true)then
        Scene.Change("world")
    end
end
