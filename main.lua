
local sphere = {
    x  = 400,
    y  = 300,
    vx = 0,
    vy = -100,
 }
 

 function love.update(dt)
   
    sphere.x = sphere.x + (sphere.vx * dt) 
    sphere.y = sphere.y + (sphere.vy * dt)
 end
 
 
 function love.draw()
    love.graphics.circle("fill", sphere.x, sphere.y, 50) 
 end