-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Set default screen background color to blue
display.setDefault( "background", 255, 0, 255 )

-- note that the image is saved in a directory ./assests/sprites/
---------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
--
-- how to add text to the screen
-- 
-----------------------------------------------------------------------------------------

local myText = display.newText( "Iqtina J", 150, 400, native.systemFont, 30 )
myText:setFillColor( 0, 0, 255 )

---------------------------------------------------------------------------------------------
---my touch listener thing---
--------------------------------------------------------------------------------------------
local textBox = display.newImageRect( "assets/text.png", 250, 200 )
textBox.x = display.contentCenterX
textBox.y = display.contentCenterY
textBox.id = "box object"
 
local function onObjectTouch( event )
    print( "beep beep hello :)")

    return true
end

textBox:addEventListener( "touch", onObjectTouch )