sti = require 'vendor/sti'
flux = require 'vendor/flux'

local hud = require 'hud'

local Ship = {
    zoomX = 0.3,
    zoomY = 0.2,
    offsetX = 1000,
    offsetY = (900 + 100)
}

local tilesLayer = nil
local floorLayer = nil
local zonesLayer = nil
local objectsLayer = nil

function Ship.load()
    map = sti('ships/test.lua')
    map.opacity = 0

    tilesLayer   = map.layers['tiles']
    tilesLayer   = map.layers['tiles']
    floorLayer   = map.layers['floor']
    zonesLayer   = map.layers['zones']
    objectsLayer = map.layers['objects']
    overlayCut   = map.layers['back_cut']
    overlayFull  = map.layers['back_full']

    overlayCut.opacity = 1
    overlayFull.opacity = 1

    map:resize(overlayFull.width * 3, overlayFull.height * 3)
end

function Ship.update(dt)
    map:update(dt)

    hud.setCurrentZone(nil)
    local zone = Ship.overObject(zonesLayer)

    if (zone) then
        hud.setCurrentZone(zone.name)
        Ship.toggleMapVisibility(1)
    else
        Ship.toggleMapVisibility(0)
    end
end

function Ship.toggleMapVisibility(visible)
    objectsLayer.opacity = 0
    zonesLayer.opacity = 0

    flux.to(floorLayer,  0.2, { opacity = visible })
    flux.to(tilesLayer,  0.2, { opacity = visible })
    flux.to(overlayFull, 0.2, { opacity = (1 - visible) })

    flux.to(Ship, 0.2, {
        offsetY = (visible == 1) and (900 + 0) or (900 + 100),
        zoomY = (visible == 1) and 0.25 or 0.2
    })
end

function Ship.draw()
    map:draw(Ship.offsetX, Ship.offsetY, Ship.zoomX, Ship.zoomY)
end

function Ship.mousepressed (x, y, button, istouch)
end

function Ship.overObject (layer)
    local mx = love.mouse.getX()
    local my = love.mouse.getY()

    for i, o in pairs(layer.objects) do
        local ox = (o.x + Ship.offsetX) * Ship.zoomX
        local oy = (o.y + Ship.offsetY) * Ship.zoomY
        local owidth = o.width * Ship.zoomX
        local oheight = o.height * Ship.zoomY

        if mx >= ox and mx <= ox + owidth then
            if my >= oy and my < oy + oheight then
                return o
            end
        end
    end
end

return Ship
