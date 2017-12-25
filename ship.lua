sti = require 'vendor/sti'
local hud = require 'hud'

local Ship = {}

function Ship.load()
    -- Load map file
    map = sti('ship1_tiles_64.lua')
    tilesLayer = map.layers['tiles']
    tilesLayer.opacity = 0
    tilesLayer.over = false

    zonesLayer = map.layers['zones']
    zonesLayer.opacity = 0
end

function Ship.update(dt)
    -- Update world
    map:update(dt)

    mx = love.mouse.getX()
    my = love.mouse.getY()
    
    tilesLayer.hover = false
    if mx >= tilesLayer.x and mx <= tilesLayer.x + tilesLayer.width * 64 then
        if my >= tilesLayer.y and my < tilesLayer.y + tilesLayer.height * 64 then
            tilesLayer.hover = true
        end
    end

    if (tilesLayer.hover) then
        tilesLayer.opacity = 1
    else
        tilesLayer.opacity = 0
    end
end

function Ship.draw()
    -- Draw world
    map:draw()
end

function Ship.mousepressed (x, y, button, istouch)
    hud.setCurrentZone(nil)
    object = Ship.hoverObject(x, y)
    if (object) then
        hud.setCurrentZone(object.name)
    end
end

function Ship.hoverObject (x, y)
    for i,o in pairs(zonesLayer.objects) do
        if mx >= o.x and mx <= o.x + o.width then
            if my >= o.y and my < o.y + o.height then
                return o
            end
        end
    end
end

return Ship
