-----------------------------------------------------------------------------------------
--
-- map.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view

	local background = display.newImageRect( "background.jpg", display.contentWidth, display.contentHeight)
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local bar = display.newImageRect( "bar.png", 800 , 100)
	bar.x = display.contentCenterX
	bar.y = display.contentHeightY

	local logo = display.newImageRect( "logo.png", 62, 52)
	logo.x = display.contentCenterX
	logo.y = display.contentHeightY

	local map = display.newImageRect( "map.png", 310, 400)
	map.x = display.contentCenterX
	map.y = display.contentHeight-214

	local title = display.newText( "Campus Map", display.contentCenterX, 45, native.systemFont, 32 )
	title:setFillColor( 0 )

	sceneGroup:insert( background )
	sceneGroup:insert( title )
	sceneGroup:insert( map )
	sceneGroup:insert( logo )
	sceneGroup:insert( bar )
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
