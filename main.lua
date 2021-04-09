bump = require "bump"
world = bump.newWorld()

player = {
  x = 0,
  y = 0,
  width = 32,
  height = 32,
  gravity = 500,
  runSpeed = 600,
  xVelocity = 0,
  yVelocity = 0,
  terminalVelocity = 600
}

local block = {
  x = -1,
  y = 551,
  width = 1200,
  height = 50
}

function love.update(dt)
  player.update(dt)
end

function player.update(dt)
  player.move(dt)
  player.applyGravity(dt)
  player.collide(dt)
end

function player.setPosition(x, y)
  player.x = x
  player.y = y
end

function love.load()
  player.setPosition(love.graphics.getWidth()/2, 540)
  world:add(player, player.x, player.y, player.width, player.height)
  world:add(block, block.x, block.y, block.width, block.height)
end

function player.move(dt)
  if love.keyboard.isDown("d") then
    player.xVelocity = player.runSpeed
  elseif love.keyboard.isDown("a") then
    player.xVelocity = - player.runSpeed
  else
    player.xVelocity = 0
  end
end

function player.applyGravity(dt)
  if player.yVelocity < player.terminalVelocity then
  player.yVelocity = player.yVelocity + player.gravity * dt
  else
    player.yVelocity = player.terminalVelocity
  end
end

function player.collide(dt)
  local futureX = player.x + player.xVelocity * dt
  local futureY = player.y + player.yVelocity * dt
  local nextX, nextY, cols, len = world:move(player, futureX, futureY)
  player.x = nextX
  player.y = nextY
  
  for i = 1, len do
    local col = cols[i]
    if col.normal.x == -1 or col.normal.y == 1 then
      player.yVelocity = 0
    end
  end

end

function player.draw()
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end 

function love.draw()
  player.draw()
  love.graphics.rectangle("line", block.x, block.y, block.width, block.height)
end