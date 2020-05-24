-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local number = 0
local message = tostring( number )
local text = display.newText( message, display.contentCenterX, 100, native.systemFont, 140 )
local kickme = display.newText( "Kick me",display.contentCenterX, display.contentCenterY, native.systemFont, 90 )
local reset = display.newText( "Reset",display.contentCenterX, display.contentCenterY + 170, native.systemFont, 50 )
local laserSound = audio.loadSound( "laser-blast.wav" )
--local text1
 





local function onObjectTap( event )
    --print( "Tap event on: " .. event.target.name )
    --text:removeSelf()
    --text:translate(1000,1000)
    --text1=text
    text:removeSelf()
    number=number+1
    message = tostring( number )
 --   text=nil
    text = display.newText( message, display.contentCenterX, 100, native.systemFont, 140 )  
    local laserChannel = audio.play( laserSound )
    --text:setFillColor( 1-0.1*number, 0, 0.5 )
    return true
end
local function OnReset( event )
	-- body
	text:removeSelf()
	number = 0
	message = tostring( number )
	text = display.newText( message, display.contentCenterX, 100, native.systemFont, 140 )
end

kickme:addEventListener( "tap", onObjectTap )
reset:addEventListener("tap", OnReset)