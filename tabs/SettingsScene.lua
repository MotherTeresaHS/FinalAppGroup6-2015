SettingsScene = class()
local settingsBackButton
local AudioButton
function SettingsScene:init()
    -- you can accept and set parameters here
    
    settingsBackButton = Button("Dropbox:Green Back Circle Button", vec2(60, 708, 100, 100)) 
    AudioButton = Button("", vec2(200, 500, 100, 100))
sprite()
end

function SettingsScene:draw()
    -- Codea does not automatically call this method
   -- background(0, 22, 255, 255)
    sprite("Dropbox:GoldGlitterbackground", 512, 384, 1024, 768)
    settingsBackButton:draw()
    AudioButton:draw()
    fill(255, 255, 255, 255)
    fontSize(100)
    font("Arial-ItalicMT")
    
    text("Settings", 512, 680)
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
      
    settingsBackButton:touched(touch)
    if(settingsBackButton.selected == true)then
        Scene.Change("play")
    end
AudioButton:touched(touch)
    if(AudioButton.selected == true)then
        Scene.Change("play")
        end
    end
