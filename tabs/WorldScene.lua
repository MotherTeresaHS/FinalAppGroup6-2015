WorldScene = class()
local mediumWorldButton
local easyWorldButton 
local hardworldButton
local WorldSceneBackButton

function WorldScene:init()
    -- you can accept and set parameters here
    print("world level")
    WorldSceneBackButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 710))
    mediumWorldButton = Button("Dropbox:Meedium mode", vec2(500, 300))
    easyWorldButton = Button("Dropbox:Easy mode", vec2(250, 300))
    hardworldButton = Button("Dropbox:Hard mode", vec2(750, 300))    
    
end

function WorldScene:draw()
    -- Codea does not automatically call this method
  sprite("Dropbox:GoldGlitterbackground", 512, 384, 1024, 768)
  --  background(209, 255, 0, 255)
    fill(73, 159, 234, 255)
    mediumWorldButton:draw()
    easyWorldButton:draw()
    hardworldButton:draw()
    WorldSceneBackButton:draw()
end

function WorldScene:touched(touch)
    -- Codea does not automatically call this method
       mediumWorldButton:touched(touch)
    if(mediumWorldButton.selected == true)then
       Scene.Change("medium")
    end
    easyWorldButton:touched(touch)
    if(easyWorldButton.selected == true)then
        Scene.Change("easy")
    end
    hardworldButton:touched(touch)
    if(hardworldButton.selected == true)then
        Scene.Change("hard")
    end
    WorldSceneBackButton:touched(touch)
    if(WorldSceneBackButton.selected == true)then
        Scene.Change("play")
    end
end

