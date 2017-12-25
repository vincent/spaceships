local space = require('space')

local Hud = {}

local jump = {}
local currentZone = {}

function Hud.load()
    font = love.graphics.newImageFont('font.png',
        ' abcdefghijklmnopqrstuvwxyz' ..
        'ABCDEFGHIJKLMNOPQRSTUVWXYZ0' ..
        '123456789.,!?-+/():;%&`\'*#=[]"')

    jump.x = 100
    jump.y = love.graphics.getHeight() - 100
    jump.text = love.graphics.newText(font, 'jump')

    currentZone.x = 300
    currentZone.y = love.graphics.getHeight() - 100
end

function Hud.update()
end

function Hud.draw()
    love.graphics.draw(jump.text, jump.x, jump.y)
    
    if (currentZone.text) then
        love.graphics.draw(currentZone.text, currentZone.x, currentZone.y)
    end
end

function Hud.mousepressed (x, y, button, istouch)
    if x >= jump.x and x <= jump.x + jump.text:getWidth() and
       y >= jump.y and y <= jump.y + jump.text:getHeight() then

        space.boostWhile(10)
    end
end

function Hud.setCurrentZone(zone)
    if (zone) then
        currentZone.text = love.graphics.newText(font, zone)
    else
        currentZone.text = nil
    end
end

return Hud