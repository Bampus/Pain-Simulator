platform = {}
player = {}
 
function love.load()
  platform.width = love.graphics.getWidth()
  platform.height = love.graphics.getHeight()
  player.img = love.graphics.newImage('cube.png')
  platform.x = 0
  platform.y = platform.height / 1.2
  player.x = love.graphics.getWidth() / 1.2
  player.y = love.graphics.getHeight() / 1.2
  player.speed = 350
  background = love.graphics.newImage("lua-game-background.jpg")
end

function love.update(dt)
   if love.keyboard.isDown('a') then
        if player.x > 0 then player.x = player.x - (player.speed * dt)
        end
    elseif love.keyboard.isDown('d') then
        if player.x < (love.graphics.getWidth() - player.img:getWidth()) then
            player.x = player.x + (player.speed* dt)
        end
    end
end

function love.draw()
   love.graphics.setColor(1, 1, 1)
   love.graphics.rectangle('line', platform.x, platform.y, platform.width, platform.height)
   love.graphics.draw(player.img, player.x, player.y, 0, 1, 1, 0, 32)
   love.graphics.rectangle("fill", 600, 400, 80, 10)
   love.graphics.rectangle("fill", 100, 400, 80, 10)
   love.graphics.rectangle("fill", 350, 400, 80, 10)
   love.graphics.setColor(1,1,1,1)
    for i = 0, love.graphics.getWidth() / background:getWidth() do
     for j = 0, love.graphics.getHeight() / background:getHeight() do
        love.graphics.draw(background, i * background:getWidth(), j * background:getHeight())
    end
  end
end