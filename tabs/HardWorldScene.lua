HardWorldScene = class()
local HardWorldSceneBackButton

function HardWorldScene:init(x)
    -- you can accept and set parameters here
    HardWorldSceneBackButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 710, 100, 100))

end

function HardWorldScene:draw()
    -- Codea does not automatically call this method
     sprite("Dropbox:GoldGlitterbackground", 512, 384, 1024, 768)
    -- background(255, 163, 0, 255)
    HardWorldSceneBackButton:draw()
end

function HardWorldScene:touched(touch)
    -- Codea does not automatically call this method
    HardWorldSceneBackButton:touched(touch)
    if(HardWorldSceneBackButton.selected == true)then
        Scene.Change("world")
    end
end
