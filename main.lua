bump = require "bump"
world = bump.newWorld()

player = {
  x = 0,
  y = 0,
  width = 8,
  height = 8,
  gravity = 800,
  runSpeed = 120,
  xVelocity = 0,
  yVelocity = 0,
  terminalVelocity = 750,
  jumpVelocity = -230,
  onGround = false,
}

  blocks = {
    ["block_Baseplate"] = {
      x = 0,
      y = 580,
      width = 1000,
      height = 50
    },

    ["block_borderWallLeft"] ={
      x = 1,
      y = 0,
      width = 1,
      height = 1200
    },

    ["block_borderWallRight"] ={
      x = 799,
      y = 0,
      width = 1,
      height = 1200
    },

    ["block_plattForm_secret_1"] = {
      x = 170,
      y = 500,
      width = 8,
      height = 16
    },

    ["block_plattForm_secret_2"] = {
      x = 0,
      y = 420,
      width = 30,
      height = 23
    },

    ["block_plattForm_secret_3"] = {
      x = 2,
      y = 450,
      width = 0.1,
      height = 1
    },

    ["block_plattFrom_trap_1"] = {
      x = 545,
      y = 540,
      width = 40 ,
      height = 8
    },

    ["block_plattForm_1"] = {
      x = 20,
      y = 560,
      width = 8,
      height = 40 
    },

    ["block_plattForm_2"] = {
      x = 0,
      y = 540,
      width = 28,
      height = 8 
    },

    ["block_plattForm_4"] = {
      x = 70,
      y = 500,
      width = 8,
      height = 8
    },

    ["block_plattForm_5"] = {
      x = 130,
      y = 550,
      width = 8,
      height = 8
    },

    ["block_plattForm_6"] = {
      x = 110,
      y = 520,
      width = 8,
      height = 8
    },

    ["block_plattForm_7"] = {
      x = 170,
      y = 470,
      width = 8,
      height = 30
    },

    ["block_plattForm_7_2"] = {
      x = 170,
      y = 510,
      width = 8,
      height = 200
    },

    ["block_plattForm_8"] = {
      x = 20,
      y = 470,
      width = 150,
      height = 8
    },

    ["block_plattForm_9"] = {
      x = 1,
      y = 510,
      width = 8,
      height = 8
    },

    ["block_plattForm_10"] = {
      x = 12,
      y = 480,
      width = 8,
      height = 8
    },

    ["block_plattForm_11"] = {
      x = 80,
      y = 451.5,
      width = 8,
      height = 20
    },
    
    ["block_plattForm_12"] = {
      x = 20,
      y = 423,
      width = 160,
      height = 20
    },

    ["block_plattForm_13"] = {
      x = 200,
      y = 550,
      width = 8,
      height = 8
    },

    ["block_plattForm_14"] = {
      x = 250,
      y = 520,
      width = 8,
      height = 8
    },

    ["block_plattForm_15"] = {
      x = 97,
      y = 440,
      width = 8,
      height = 20
    },

    ["block_plattForm_16"] = {
      x = 250,
      y = 540,
      width = 8,
      height = 60
    },

    ["block_plattForm_17"] = {
      x = 650,
      y = 540,
      width = 8,
      height = 60
    },

    ["block_plattForm_18"] = {
      x = 300,
      y = 540,
      width = 8,
      height = 8
    },

    ["block_plattForm_19"] = {
      x = 315,
      y = 510,
      width = 8,
      height = 8
    },

    ["block_plattForm_20"] = {
      x = 355,
      y = 520,
      width = 16,
      height = 8
    },

    ["block_plattForm_21"] = {
      x = 420,
      y = 520,
      width = 16,
      height = 8
    },

    ["block_plattForm_22"] = {
      x = 480,
      y = 500,
      width = 16,
      height = 8
    },

    ["block_plattForm_23"] = {
      x = 545,
      y = 540,
      width = 16,
      height = 8
    },

    ["block_plattForm_24"] = {
      x = 610,
      y = 530,
      width = 16,
      height = 8
    },

    ["block_plattForm_25"] = {
      x = 690,
      y = 550,
      width = 8,
      height = 8
    },

    ["block_plattForm_26"] = {
      x = 740,
      y = 535,
      width = 8,
      height = 8
    },

    ["block_plattForm_27"] = {
      x = 710,
      y = 505,
      width = 8,
      height = 8
    },

    ["block_plattForm_28"] = {
      x = 755,
      y = 475,
      width = 8,
      height = 8
    },

    ["block_plattForm_29"] = {
      x = 792,
      y = 445,
      width = 8,
      height = 8
    },

    ["block_plattForm_30"] = {
      x = 750,
      y = 420,
      width = 8,
      height = 8
    },

    ["block_plattForm_divider"] = {
      x = 16,
      y = 420,
      width = 684,
      height = 8
    },
  }

  blocks_2 = {

    ["block_plattForm_secret_1"] = {
      x = 700,
      y = 340,
      width = 8,
      height = 8
    },

    ["block_plattForm_secret_2"] = {
      x = 708,
      y = 168,
      width = 8,
      height = 8
    },

    ["block_plattForm_1"] = {
      x = 692,
      y = 160,
      width = 8,
      height = 260
    },

    ["block_plattForm_2"] = {
      x = 782,
      y = 390,
      width = 8,
      height = 8
    },

    ["block_plattForm_3"] = {
      x = 730,
      y = 365,
      width = 8,
      height = 8
    },

    ["block_plattForm_4"] = {
      x = 780,
      y = 340,
      width = 8,
      height = 8
    },

    ["block_plattForm_5"] = {
      x = 735,
      y = 310,
      width = 8,
      height = 8
    },

    ["block_plattForm_6"] = {
      x = 775,
      y = 280,
      width = 8,
      height = 8
    },

    ["block_plattForm_7"] = {
      x = 792,
      y = 250,
      width = 8,
      height = 8
    },

    ["block_plattForm_8"] = {
      x = 792,
      y = 230,
      width = 8,
      height = 8
    },

    ["block_plattForm_9"] = {
      x = 750,
      y = 210,
      width = 8,
      height = 8
    },

    ["block_plattForm_10"] = {
      x = 700,
      y = 168,
      width = 8,
      height = 8
    },

    ["block_plattForm_11"] = {
      x = 725,
      y = 185,
      width = 8,
      height = 8
    },
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
  love.graphics.setColor(1, 0, 0)
  love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
end

function love.draw()
  player.draw()
  love.graphics.setColor(1, 1, 1)
  love.graphics.rectangle("fill", blocks.block_Baseplate.x, blocks.block_Baseplate.y, blocks.block_Baseplate.width, blocks.block_Baseplate.height)

  love.graphics.rectangle("fill", blocks.block_borderWallLeft.x, blocks.block_borderWallLeft.y, blocks.block_borderWallLeft.width, blocks.block_borderWallLeft.height)
  love.graphics.rectangle("fill", blocks.block_borderWallRight.x, blocks.block_borderWallRight.y, blocks.block_borderWallRight.width, blocks.block_borderWallRight.height)

  love.graphics.rectangle("fill", blocks.block_plattForm_secret_1.x, blocks.block_plattForm_secret_1.y, blocks.block_plattForm_secret_1.width, blocks.block_plattForm_secret_1.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_secret_2.x, blocks.block_plattForm_secret_2.y, blocks.block_plattForm_secret_2.width, blocks.block_plattForm_secret_2.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_secret_3.x, blocks.block_plattForm_secret_3.y, blocks.block_plattForm_secret_3.width, blocks.block_plattForm_secret_3.height)

  love.graphics.rectangle("fill", blocks_2.block_plattForm_secret_1.x, blocks_2.block_plattForm_secret_1.y, blocks_2.block_plattForm_secret_1.width, blocks_2.block_plattForm_secret_1.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_secret_2.x, blocks_2.block_plattForm_secret_2.y, blocks_2.block_plattForm_secret_2.width, blocks_2.block_plattForm_secret_2.height)

  love.graphics.rectangle("fill", blocks.block_plattFrom_trap_1.x, blocks.block_plattFrom_trap_1.y, blocks.block_plattFrom_trap_1.width, blocks.block_plattFrom_trap_1.height)

  love.graphics.rectangle("fill", blocks.block_plattForm_1.x, blocks.block_plattForm_1.y, blocks.block_plattForm_1.width, blocks.block_plattForm_1.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_2.x, blocks.block_plattForm_2.y, blocks.block_plattForm_2.width, blocks.block_plattForm_2.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_4.x, blocks.block_plattForm_4.y, blocks.block_plattForm_4.width, blocks.block_plattForm_4.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_5.x, blocks.block_plattForm_5.y, blocks.block_plattForm_5.width, blocks.block_plattForm_5.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_6.x, blocks.block_plattForm_6.y, blocks.block_plattForm_6.width, blocks.block_plattForm_6.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_7.x, blocks.block_plattForm_7.y, blocks.block_plattForm_7.width, blocks.block_plattForm_7.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_7_2.x, blocks.block_plattForm_7_2.y, blocks.block_plattForm_7_2.width, blocks.block_plattForm_7_2.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_8.x, blocks.block_plattForm_8.y, blocks.block_plattForm_8.width, blocks.block_plattForm_8.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_9.x, blocks.block_plattForm_9.y, blocks.block_plattForm_9.width, blocks.block_plattForm_9.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_10.x, blocks.block_plattForm_10.y, blocks.block_plattForm_10.width, blocks.block_plattForm_10.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_11.x, blocks.block_plattForm_11.y, blocks.block_plattForm_11.width, blocks.block_plattForm_11.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_12.x, blocks.block_plattForm_12.y, blocks.block_plattForm_12.width, blocks.block_plattForm_12.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_13.x, blocks.block_plattForm_13.y, blocks.block_plattForm_13.width, blocks.block_plattForm_13.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_14.x, blocks.block_plattForm_14.y, blocks.block_plattForm_14.width, blocks.block_plattForm_14.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_15.x, blocks.block_plattForm_15.y, blocks.block_plattForm_15.width, blocks.block_plattForm_15.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_16.x, blocks.block_plattForm_16.y, blocks.block_plattForm_16.width, blocks.block_plattForm_16.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_17.x, blocks.block_plattForm_17.y, blocks.block_plattForm_17.width, blocks.block_plattForm_17.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_18.x, blocks.block_plattForm_18.y, blocks.block_plattForm_18.width, blocks.block_plattForm_18.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_19.x, blocks.block_plattForm_19.y, blocks.block_plattForm_19.width, blocks.block_plattForm_19.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_20.x, blocks.block_plattForm_20.y, blocks.block_plattForm_20.width, blocks.block_plattForm_20.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_21.x, blocks.block_plattForm_21.y, blocks.block_plattForm_21.width, blocks.block_plattForm_21.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_22.x, blocks.block_plattForm_22.y, blocks.block_plattForm_22.width, blocks.block_plattForm_22.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_23.x, blocks.block_plattForm_23.y, blocks.block_plattForm_23.width, blocks.block_plattForm_23.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_24.x, blocks.block_plattForm_24.y, blocks.block_plattForm_24.width, blocks.block_plattForm_24.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_25.x, blocks.block_plattForm_25.y, blocks.block_plattForm_25.width, blocks.block_plattForm_25.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_26.x, blocks.block_plattForm_26.y, blocks.block_plattForm_26.width, blocks.block_plattForm_26.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_27.x, blocks.block_plattForm_27.y, blocks.block_plattForm_27.width, blocks.block_plattForm_27.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_28.x, blocks.block_plattForm_28.y, blocks.block_plattForm_28.width, blocks.block_plattForm_28.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_29.x, blocks.block_plattForm_29.y, blocks.block_plattForm_29.width, blocks.block_plattForm_29.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_30.x, blocks.block_plattForm_30.y, blocks.block_plattForm_30.width, blocks.block_plattForm_30.height)
  
  love.graphics.rectangle("fill", blocks_2.block_plattForm_1.x, blocks_2.block_plattForm_1.y, blocks_2.block_plattForm_1.width, blocks_2.block_plattForm_1.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_2.x, blocks_2.block_plattForm_2.y, blocks_2.block_plattForm_2.width, blocks_2.block_plattForm_2.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_3.x, blocks_2.block_plattForm_3.y, blocks_2.block_plattForm_3.width, blocks_2.block_plattForm_3.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_4.x, blocks_2.block_plattForm_4.y, blocks_2.block_plattForm_4.width, blocks_2.block_plattForm_4.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_5.x, blocks_2.block_plattForm_5.y, blocks_2.block_plattForm_5.width, blocks.block_plattForm_5.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_6.x, blocks_2.block_plattForm_6.y, blocks_2.block_plattForm_6.width, blocks_2.block_plattForm_6.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_7.x, blocks_2.block_plattForm_7.y, blocks_2.block_plattForm_7.width, blocks_2.block_plattForm_7.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_8.x, blocks_2.block_plattForm_8.y, blocks_2.block_plattForm_8.width, blocks_2.block_plattForm_8.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_9.x, blocks_2.block_plattForm_9.y, blocks_2.block_plattForm_9.width, blocks_2.block_plattForm_9.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_10.x, blocks_2.block_plattForm_10.y, blocks_2.block_plattForm_10.width, blocks_2.block_plattForm_10.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_11.x, blocks_2.block_plattForm_11.y, blocks_2.block_plattForm_11.width, blocks_2.block_plattForm_11.height)
  
  love.graphics.rectangle("fill", blocks.block_plattForm_divider.x, blocks.block_plattForm_divider.y, blocks.block_plattForm_divider.width, blocks.block_plattForm_divider.height)
end

function love.load()
  player.setPosition(790, 400)
  world:add(player, player.x, player.y, player.width, player.height)
  
  world:add(blocks.block_Baseplate, blocks.block_Baseplate.x, blocks.block_Baseplate.y, blocks.block_Baseplate.width, blocks.block_Baseplate.height)
  world:add(blocks.block_borderWallLeft, blocks.block_borderWallLeft.x, blocks.block_borderWallLeft.y, blocks.block_borderWallLeft.width, blocks.block_borderWallLeft.height)
  world:add(blocks.block_borderWallRight, blocks.block_borderWallRight.x, blocks.block_borderWallRight.y, blocks.block_borderWallRight.width, blocks.block_borderWallRight.height)
  
  world:add(blocks.block_plattForm_secret_3, blocks.block_plattForm_secret_3.x, blocks.block_plattForm_secret_3.y, blocks.block_plattForm_secret_3.width, blocks.block_plattForm_secret_3.height)

  world:add(blocks.block_plattForm_1, blocks.block_plattForm_1.x, blocks.block_plattForm_1.y, blocks.block_plattForm_1.width, blocks.block_plattForm_1.height)
  world:add(blocks.block_plattForm_2, blocks.block_plattForm_2.x, blocks.block_plattForm_2.y, blocks.block_plattForm_2.width, blocks.block_plattForm_2.height)
  world:add(blocks.block_plattForm_4, blocks.block_plattForm_4.x, blocks.block_plattForm_4.y, blocks.block_plattForm_4.width, blocks.block_plattForm_4.height)
  world:add(blocks.block_plattForm_5, blocks.block_plattForm_5.x, blocks.block_plattForm_5.y, blocks.block_plattForm_5.width, blocks.block_plattForm_5.height)
  world:add(blocks.block_plattForm_6, blocks.block_plattForm_6.x, blocks.block_plattForm_6.y, blocks.block_plattForm_6.width, blocks.block_plattForm_6.height)
  world:add(blocks.block_plattForm_7, blocks.block_plattForm_7.x, blocks.block_plattForm_7.y, blocks.block_plattForm_7.width, blocks.block_plattForm_7.height)
  world:add(blocks.block_plattForm_7_2, blocks.block_plattForm_7_2.x, blocks.block_plattForm_7_2.y, blocks.block_plattForm_7_2.width, blocks.block_plattForm_7_2.height)
  world:add(blocks.block_plattForm_8, blocks.block_plattForm_8.x, blocks.block_plattForm_8.y, blocks.block_plattForm_8.width, blocks.block_plattForm_8.height)
  world:add(blocks.block_plattForm_9, blocks.block_plattForm_9.x, blocks.block_plattForm_9.y, blocks.block_plattForm_9.width, blocks.block_plattForm_9.height)
  world:add(blocks.block_plattForm_10, blocks.block_plattForm_10.x, blocks.block_plattForm_10.y, blocks.block_plattForm_10.width, blocks.block_plattForm_10.height)
  world:add(blocks.block_plattForm_11, blocks.block_plattForm_11.x, blocks.block_plattForm_11.y, blocks.block_plattForm_11.width, blocks.block_plattForm_11.height)
  world:add(blocks.block_plattForm_12, blocks.block_plattForm_12.x, blocks.block_plattForm_12.y, blocks.block_plattForm_12.width, blocks.block_plattForm_12.height)
  world:add(blocks.block_plattForm_13, blocks.block_plattForm_13.x, blocks.block_plattForm_13.y, blocks.block_plattForm_13.width, blocks.block_plattForm_13.height)
  world:add(blocks.block_plattForm_14, blocks.block_plattForm_14.x, blocks.block_plattForm_14.y, blocks.block_plattForm_14.width, blocks.block_plattForm_14.height)
  world:add(blocks.block_plattForm_15, blocks.block_plattForm_15.x, blocks.block_plattForm_15.y, blocks.block_plattForm_15.width, blocks.block_plattForm_15.height)
  world:add(blocks.block_plattForm_16, blocks.block_plattForm_16.x, blocks.block_plattForm_16.y, blocks.block_plattForm_16.width, blocks.block_plattForm_16.height)
  world:add(blocks.block_plattForm_17, blocks.block_plattForm_17.x, blocks.block_plattForm_17.y, blocks.block_plattForm_17.width, blocks.block_plattForm_17.height)
  world:add(blocks.block_plattForm_18, blocks.block_plattForm_18.x, blocks.block_plattForm_18.y, blocks.block_plattForm_18.width, blocks.block_plattForm_18.height)
  world:add(blocks.block_plattForm_19, blocks.block_plattForm_19.x, blocks.block_plattForm_19.y, blocks.block_plattForm_19.width, blocks.block_plattForm_19.height)
  world:add(blocks.block_plattForm_20, blocks.block_plattForm_20.x, blocks.block_plattForm_20.y, blocks.block_plattForm_20.width, blocks.block_plattForm_20.height)
  world:add(blocks.block_plattForm_21, blocks.block_plattForm_21.x, blocks.block_plattForm_21.y, blocks.block_plattForm_21.width, blocks.block_plattForm_21.height)
  world:add(blocks.block_plattForm_22, blocks.block_plattForm_22.x, blocks.block_plattForm_22.y, blocks.block_plattForm_22.width, blocks.block_plattForm_22.height)
  world:add(blocks.block_plattForm_23, blocks.block_plattForm_23.x, blocks.block_plattForm_23.y, blocks.block_plattForm_23.width, blocks.block_plattForm_23.height)
  world:add(blocks.block_plattForm_24, blocks.block_plattForm_24.x, blocks.block_plattForm_24.y, blocks.block_plattForm_24.width, blocks.block_plattForm_24.height)
  world:add(blocks.block_plattForm_25, blocks.block_plattForm_25.x, blocks.block_plattForm_25.y, blocks.block_plattForm_25.width, blocks.block_plattForm_25.height)
  world:add(blocks.block_plattForm_26, blocks.block_plattForm_26.x, blocks.block_plattForm_26.y, blocks.block_plattForm_26.width, blocks.block_plattForm_26.height)
  world:add(blocks.block_plattForm_27, blocks.block_plattForm_27.x, blocks.block_plattForm_27.y, blocks.block_plattForm_27.width, blocks.block_plattForm_27.height)
  world:add(blocks.block_plattForm_28, blocks.block_plattForm_28.x, blocks.block_plattForm_28.y, blocks.block_plattForm_28.width, blocks.block_plattForm_28.height)
  world:add(blocks.block_plattForm_29, blocks.block_plattForm_29.x, blocks.block_plattForm_29.y, blocks.block_plattForm_29.width, blocks.block_plattForm_29.height)
  world:add(blocks.block_plattForm_30, blocks.block_plattForm_30.x, blocks.block_plattForm_30.y, blocks.block_plattForm_30.width, blocks.block_plattForm_30.height)
  
  world:add(blocks_2.block_plattForm_1, blocks_2.block_plattForm_1.x, blocks_2.block_plattForm_1.y, blocks_2.block_plattForm_1.width, blocks_2.block_plattForm_1.height)
  world:add(blocks_2.block_plattForm_2, blocks_2.block_plattForm_2.x, blocks_2.block_plattForm_2.y, blocks_2.block_plattForm_2.width, blocks_2.block_plattForm_2.height)
  world:add(blocks_2.block_plattForm_3, blocks_2.block_plattForm_3.x, blocks_2.block_plattForm_3.y, blocks_2.block_plattForm_3.width, blocks_2.block_plattForm_3.height)
  world:add(blocks_2.block_plattForm_4, blocks_2.block_plattForm_4.x, blocks_2.block_plattForm_4.y, blocks_2.block_plattForm_4.width, blocks_2.block_plattForm_4.height)
  world:add(blocks_2.block_plattForm_5, blocks_2.block_plattForm_5.x, blocks_2.block_plattForm_5.y, blocks_2.block_plattForm_5.width, blocks_2.block_plattForm_5.height)
  world:add(blocks_2.block_plattForm_6, blocks_2.block_plattForm_6.x, blocks_2.block_plattForm_6.y, blocks_2.block_plattForm_6.width, blocks_2.block_plattForm_6.height)
  world:add(blocks_2.block_plattForm_7, blocks_2.block_plattForm_7.x, blocks_2.block_plattForm_7.y, blocks_2.block_plattForm_7.width, blocks_2.block_plattForm_7.height)
  world:add(blocks_2.block_plattForm_8, blocks_2.block_plattForm_8.x, blocks_2.block_plattForm_8.y, blocks_2.block_plattForm_8.width, blocks_2.block_plattForm_8.height)
  world:add(blocks_2.block_plattForm_9, blocks_2.block_plattForm_9.x, blocks_2.block_plattForm_9.y, blocks_2.block_plattForm_9.width, blocks_2.block_plattForm_9.height)
  world:add(blocks_2.block_plattForm_10, blocks_2.block_plattForm_10.x, blocks_2.block_plattForm_10.y, blocks_2.block_plattForm_10.width, blocks_2.block_plattForm_10.height)
  world:add(blocks_2.block_plattForm_11, blocks_2.block_plattForm_11.x, blocks_2.block_plattForm_11.y, blocks_2.block_plattForm_11.width, blocks_2.block_plattForm_11.height)
  
  world:add(blocks.block_plattForm_divider, blocks.block_plattForm_divider.x, blocks.block_plattForm_divider.y, blocks.block_plattForm_divider.width, blocks.block_plattForm_divider.height)
end

