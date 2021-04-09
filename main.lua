bump = require "bump"
world = bump.newWorld()

player = {
  x = 0,
  y = 0,
  width = 32,
  height = 32,
  gravity = 1000,
  runSpeed = 600,
  xVelocity = 0,
  yVelocity = 0,
  terminalVelocity = 800,
  jumpVelocity = -400,
  onGround = false,
}
  block_Baseplate = {
    x = 75,
    y = 551,
    width = 650,
    height = 50
  }

  block_borderWallLeft ={
    x = 1,
    y = 0,
    width = 1,
    height = 1200
  }

  block_borderWallRight ={
    x = 798,
    y = 0,
    width = 1,
    height = 1200
  }

function love.update(dt)
  player.update(dt)
end

function player.update(dt)
  player.move(dt)
  player.applyGravity(dt)
  player.collide(dt)
  player.jump(dt)
end

function player.jump(dt)
  if love.keyboard.isDown("w") and player.onGround == true then
    player.yVelocity = player.jumpVelocity
  end
end

function player.setPosition(x, y)
  player.x, player.y = x, y
end

function player.move(dt)
  if love.keyboard.isDown("d") then
    player.xVelocity = player.runSpeed
  elseif love.keyboard.isDown("a") then
    player.xVelocity = -player.runSpeed
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
  player.onGround = false
  for i = 1, len do 
    local col = cols[i]
    if col.normal.y == -1 then
      player.onGround = true
    end
  end
  player.x = nextX
  player.y = nextY
end

function player.draw()
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end

function love.draw()
  player.draw()
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("line", block_Baseplate.x, block_Baseplate.y, block_Baseplate.width, block_Baseplate.height)
  love.graphics.rectangle("line", block_borderWallLeft.x, block_borderWallLeft.y,block_borderWallLeft.width, block_borderWallLeft.height)
  love.graphics.rectangle("line", block_borderWallRight.x, block_borderWallRight.y,block_borderWallRight.width, block_borderWallRight.height)
end

function love.load()
  player.setPosition(love.graphics.getWidth()/2, 0)
  world:add(player, player.x, player.y, player.width, player.height)
  world:add(block_Baseplate, block_Baseplate.x, block_Baseplate.y, block_Baseplate.width, block_Baseplate.height)
  world:add(block_borderWallLeft, block_borderWallLeft.x, block_borderWallLeft.y, block_borderWallLeft.width, block_borderWallLeft.height)
  world:add(block_borderWallRight, block_borderWallRight.x, block_borderWallRight.y, block_borderWallRight.width, block_borderWallRight.height)
end

