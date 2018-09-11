-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

display.setStatusBar( display.DefaultStatusBar )

local widget = require "widget"
local composer = require "composer"

local function onFirstView( event )
	composer.gotoScene( "profile" )
end

local function onSecondView( event )
	composer.gotoScene( "map" )
end

local function onThirdView( event )
	composer.gotoScene( "settings" )
end

local function onFourthView( event )
	composer.gotoScene( "ride" )
end


local tabButtons = {
	{ label="Profile", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onFirstView, selected=true },
	{ label="Campus map", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onSecondView},
	{ label="Settings", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onThirdView},
	{ label="Ride", defaultFile="button1.png", overFile="button1-down.png", width = 32, height = 32, onPress=onFourthView},
}


local tabBar = widget.newTabBar{
	top = display.contentHeight - 10,
	buttons = tabButtons
}

onFirstView()
