-----------------------------------------------------------------------------------------
--
-- ride.lua
--
-----------------------------------------------------------------------------------------
-- display.setStatusBar( display.DefaultStatusBar )

local widget = require "widget"
local composer = require "composer"

local function onFourthevent(event)
	composer.gotoScene( "findride" )
end

local function onFifthView( event )
	composer.gotoScene( "uevents" )
end

-- local function onThirdView( event )
-- 	composer.gotoScene( "ride" )
-- end
--
-- local function onFourthView( event )
-- 	composer.gotoScene( "settings" )
-- end

local tabButtons = {
	{ label="Find ride", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=onFifthView, selected=true },
	{ label="Events", defaultFile="button2.png", overFile="button2-down.png", width = 32, height = 32, onPress=onSixthView, selected=true },
	-- { label="Ride", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onThirdView },
	-- { label="Settings", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onFourthView },
}

local tabBar = widget.newTabBar{
	top = display.contentHeight - 100,
	buttons = tabButtons
}

onFourthView()

-----------------------------------------------------------------------------------------
local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	local bar = display.newImageRect( "bar.png", 800 , 100)
	bar.x = display.contentCenterX
	bar.y = display.contentHeightY

	local logo = display.newImageRect( "logo.png", 77, 70)
	logo.x = display.contentCenterX
	logo.y = display.contentHeight-487


	local title = display.newText( "Ride", display.contentCenterX, 80, native.systemFont, 32 )
	title:setFillColor( 0 )

	local background = display.newImageRect( "background.jpg", display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local newTextParams = { text = "Loaded by the first tab's\n\"onPress\" listener\nspecified in the 'tabButtons' table",
						x = display.contentCenterX + 10,
						y = title.y + 215,
						width = 310, height = 310,
						font = native.systemFont, fontSize = 14,
						align = "center" }
	local summary = display.newText( newTextParams )
	summary:setFillColor( 0 ) -- black

	sceneGroup:insert( background )
	sceneGroup:insert( title )
	sceneGroup:insert( summary )
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase

	if phase == "will" then
	elseif phase == "did" then
	end
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase

	if event.phase == "will" then
	elseif phase == "did" then
	end
end

function scene:destroy( event )
	local sceneGroup = self.view
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
