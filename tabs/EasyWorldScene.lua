

EasyWorldScene = class()

local easyWorldBackButton
local level1Button
local level2Button
local level3Button
local level4Button
local level5Button
local level6Button
local level7Button
local level8Button
local level9Button
local level10Button


function EasyWorldScene:init()
    -- you can accept and set parameters here
    easyWorldBackButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 710, 100, 100))
    level1Button = Button("Dropbox:Blue Level Menu Button", vec2(150, 550, 100, 100))    
    level2Button = Button("Dropbox:Blue Level Menu Button", vec2(350, 550, 100, 100))
    level3Button = Button("Dropbox:Blue Level Menu Button", vec2(550, 550, 100, 100))
    level4Button = Button("Dropbox:Blue Level Menu Button", vec2(750, 550, 100, 100))
    level5Button = Button("Dropbox:Blue Level Menu Button", vec2(950, 550, 100, 100))
    level6Button = Button("Dropbox:Blue Level Menu Button", vec2(150, 350, 100, 100))
    level7Button = Button("Dropbox:Blue Level Menu Button", vec2(350, 350, 100, 100))
    level8Button = Button("Dropbox:Blue Level Menu Button", vec2(550, 350, 100, 100))
    level9Button = Button("Dropbox:Blue Level Menu Button", vec2(750, 350, 100, 100))
    level10Button = Button("Dropbox:Blue Level Menu Button", vec2(950, 350, 100, 100))


end

function EasyWorldScene:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:GoldGlitterbackground", 512, 384, 1024, 768)
    -- background(0, 39, 253, 255)
    fill(255, 0, 42, 255)
    easyWorldBackButton:draw()
    level1Button:draw()
    level2Button:draw()
    level3Button:draw()
    level4Button:draw()
    level5Button:draw()
    level6Button:draw()
    level7Button:draw()
    level8Button:draw()
    level9Button:draw()
    level10Button:draw()
   font("AmericanTypewriter-Bold")
    fontSize(50)
    text("1", 150, 450)
    text("2", 350, 450)
    text("3", 550, 450)
    text("4", 750, 450)
    text("5", 950, 450)
    text("6", 150, 250)
    text("7", 350, 250)
    text("8", 550, 250)
    text("9", 750, 250)
    text("10", 950, 250)
    
end

function EasyWorldScene:touched(touch)
    -- Codea does not automatically call this method
    easyWorldBackButton:touched(touch)
    if(easyWorldBackButton.selected == true)then 
        Scene.Change("world")
    end

    level1Button:touched(touch)
    if(level1Button.selected == true)then 
        Scene.Change("game")   
    end
end