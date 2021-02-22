Platform= {}
 
function love.load()
	Platform.width = love.graphics.getWidth()   
	Platform.height = love.graphics.getHeight() 
	Platform.x = 0                               
	Platform.y = Platform.height / 1.25           
end
 
function love.update(dt)
 
end
 
function love.draw()
	love.graphics.setColor(1, 1, 1) 
   love.graphics.rectangle('fill', Platform.x, Platform.y, Platform.width, Platform.height)
end

Player = {}

function love.load()
   Player.x = love.graphics.getWidth() / 1.25
   Player.y = love.graphics.getHeight() / 1.25

   Player.img = love.graphics.newImage('purple.png')

end

function love.update()
   
end

function love.draw()
   love.graphics.draw(Player.x, Player.y, 0, 1, 1, 0, 32)
end