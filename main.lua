flux = require('vendor/flux')

local space = require 'space'
local ship = require 'ship'
local hud = require 'hud'


function love.load()
    love.window.setFullscreen(true)
    space.load()
    ship.load()
    hud.load()
end

function love.update(dt)
    flux.update(dt)

    space.update(dt)
    ship.update(dt)
    hud.update(dt)
end

function love.draw()
    space.draw()
    ship.draw()
    hud.draw()
end

function love.mousepressed (x, y, button, istouch)
    hud.mousepressed(x, y, button, istouch)
    ship.mousepressed (x, y, button, istouch)
end