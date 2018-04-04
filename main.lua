-- Title: WhackAMole
-- Name: Desmy M-J
-- Course: ICS2O/3C
-- This prog

--Creating Background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )

--setting position
bkg.anchorX = 0
bkg.anchorY = 0
bkg.x = 0
bkg.y

--Creating Mole
local mole = display.newImage ( "Images/mole.png" , 0, 0 )

    --Setting Position
    mole.x = display.contentCenterX
    mole.y = display.contentCenterY

    ----------------------------------Functions---------------------------------------------

    --This function that makes the mole appear in a random (x,y) position on the screen
    --before calling the Hide function
    function PopUp()

    	--Choosing Random Position on the screen between 0 and the size of the screen
    	mole.x = math.random( 0, display.contentWidth )
    	mole.y = math.random( 0, display.contentHeight )
    end

    --This function calls the PopUp function after 3 seconds
    function PopUpDelay9
    	timer.performDelay ( 3000, PopUp)
    end

    --This function makes the mole invisible and then calls the PopUpDelay function
    function Hide()

    	--changing Visibility
    	mole.isVisible = false
end