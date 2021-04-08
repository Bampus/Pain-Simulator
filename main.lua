
player = {
  x = 0,
  y = 0,
  width = 32,
  height = 32,
  gravity = 400,
  runSpeed = 600,
  xVelocity = 0,
  yVelocity = 0,
  terminalVelocity = 500
}

function player.update(dt)
  player.move(dt)
  player.applyGravity(dt)
  player.x = player.x + player.xVelocity * dt 
  player.y = player.y + player.yVelocity * dt
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

function player.draw()
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end 

function player.setPosition(x, y)
  player.x = x
  player.y = y
end

function love.load()
  player.setPosition(love.graphics.getWidth()/2, 0)
end

function love.update(dt)
  player.update(dt)
end

function love.draw()
  player.draw()
end