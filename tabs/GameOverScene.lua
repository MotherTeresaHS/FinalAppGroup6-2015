GameOverScene = class()

function GameOverScene:init()
    -- you can accept and set parameters here
    
end

function GameOverScene:draw()
    -- Codea does not automatically call this method
    background(255, 0, 0, 255)
    font("Papyrus")
    fontSize(100)
    fill(0, 0, 0, 255)
    stroke(5)
    text("GAME OVER", 512, 384)
end

function GameOverScene:touched(touch)
    -- Codea does not automatically call this method
end
