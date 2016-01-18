TutorialScene = class()
local tutorialButton
local worldButton
local mediumWorldButton
local easyWorldButton 
local hardworldButton
function TutorialScene:init()
    -- you can accept and set parameters here
    tutorialButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 710))  
    mediumWorldButton = Button("Dropbox:Meedium mode", vec2(300, 384))
    easyWorldButton = Button("Dropbox:Easy mode", vec2(500, 384))
    hardworldButton = Button("Dropbox:Hard mode", vec2(700, 384))
 --   
    
end
-- sprite("Dropbox:Blue Back Circle Button")
function TutorialScene:draw()
    -- Codea does not automatically call this method
  --  background(255, 0, 0, 255)
    sprite("Dropbox:GoldGlitterbackground", 512, 384, 1024, 768)
    fill(159, 159, 159, 255)
    tutorialButton:draw()

    mediumWorldButton:draw()
    easyWorldButton:draw()
    hardworldButton:draw()
    
end

function TutorialScene:touched(touch)
    -- Codea does not automatically call this method
  tutorialButton:touched(touch)  
    if(tutorialButton.selected == true)then
        Scene.Change("play")

     end
    
    
    mediumWorldButton:touched(touch)
    if(mediumWorldButton.selected == true)then
       Scene.Change("game")
    end
    easyWorldButton:touched(touch)
    if(easyWorldButton.selected == true)then
        Scene.Change("game")
    end
    hardworldButton:touched(touch)
    if(hardworldButton.selected == true)then
        Scene.Change("game")
    end
end
