player = {
  x = 0,
  y = 0,
  width = 32,
  height = 32,
  gravity = 9.82 * dt,
  playerSpeed = 600
}

function player.initialize(x, y)
  player.x, player.y = x, y
end

function player.update(dt)
  player.move(dt)
  player.applyGravity(dt)
end

function player.move(dt)
  if love.keyboard.isDown("d") then
    player.x = player.x + player.runspeed * dt 
  elseif love.keyboard.isDown("a") then
    player.x = player.x - player.runspeed * dt 
  end
end