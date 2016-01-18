CreditsScene = class()

local backToMainButton

function CreditsScene:init()

    -- you can accept and set parameters here

 backToMainButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 708, 100, 100))   

    --sprite()

end



function CreditsScene:draw()

    -- Codea does not automatically call this method

    background(255, 13, 0, 255)



    backToMainButton:draw()

    

    

    fill(255, 255, 255, 255)

    fontSize(100)

    font("HelveticaNeue")

    text("Credits", 512, 668)

    fontSize(50)

    text("People Who Helped Create This", 512, 550)

    text("Mars", 512, 450)

     text("Sophia", 512, 390)

      text("Niamh", 512, 320 )

    text("Alessandro Iaderosa", 512, 260)

     text("Warsame Egeh",512, 190)

    text("Ben Jenkins",512, 120)

    text("Hejoo Suh", 512, 50)

end





function CreditsScene:touched(touch)

    -- Codea does not automatically call this method

    backToMainButton:touched(touch)

    if(backToMainButton.selected == true) then

        Scene.Change("play")

    end

end