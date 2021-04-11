retryCount = 0

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

    ["block_plattForm_divider"] = {
      x = 16,
      y = 420,
      width = 502,
      height = 8
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

    ["block_plattForm_secret_4"] = {
      x = 725,
      y = 100,
      width = 32,
      height = 8
    },

    ["block_plattForm_secret_5"] = {
      x = 510,
      y = 210,
      width = 8,
      height = 10
    },


    ["block_plattFrom_trap_1"] = {
      x = 545,
      y = 540,
      width = 40 ,
      height = 8
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
      height = 8
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
  
  blocks_3 = {
    ["block_plattForm_1"] = {
      x = 600,
      y = 100,
      width = 125,
      height = 8
    },

    ["block_plattForm_2"] = {
      x = 750,
      y = 100,
      width = 50,
      height = 8
    },

    ["block_plattForm_3"] = {
      x = 600,
      y = 100,
      width = 8,
      height = 250
    },

    ["block_plattForm_4"] = {
      x = 625,
      y = 200,
      width = 8,
      height = 8
    },

    ["block_plattForm_5"] = {
      x = 665,
      y = 300,
      width = 8,
      height = 8
    },

    ["block_plattForm_6"] = {
      x = 625,
      y = 375,
      width = 8,
      height = 8
    },

    ["block_plattForm_7"] = {
      x = 600,
      y = 400,
      width = 8,
      height = 8
    },

    ["block_plattForm_8"] = {
      x = 510,
      y = 220,
      width = 8,
      height = 200
    },

    ["block_plattForm_9"] = {
      x = 560,
      y = 370,
      width = 8,
      height = 8
    },

    ["block_plattForm_10"] = {
      x = 518,
      y = 350,
      width = 8,
      height = 8
    },

    ["block_plattForm_11"] = {
      x = 555,
      y = 310,
      width = 8,
      height = 8
    },

    ["block_plattForm_12"] = {
      x = 518,
      y = 331.99,
      width = 8,
      height = 8
    },

    ["block_plattForm_13"] = {
      x = 592,
      y = 262,
      width = 8,
      height = 8
    },

    ["block_plattForm_14"] = {
      x = 592,
      y = 280,
      width = 8,
      height = 8
    },

    ["block_plattForm_15"] = {
      x = 510,
      y = 100,
      width = 100,
      height = 8
    },

    ["block_plattForm_16"] = {
      x = 565,
      y = 240,
      width = 8,
      height = 8
    },

    ["block_plattForm_17"] = {
      x = 518,
      y = 202,
      width = 8,
      height = 8
    },

    ["block_plattForm_18"] = {
      x = 518,
      y = 220,
      width = 8,
      height = 8
    },

    ["block_plattForm_19"] = {
      x = 510,
      y = 100,
      width = 8,
      height = 110
    },

    ["block_plattForm_20"] = {
      x = 555,
      y = 180,
      width = 8,
      height = 8
    },
  }

  blocks_4 = {
    ["block_plattFrom_trap_1"] = {
      x = 450,
      y = 325,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_2"] = {
      x = 450,
      y = 300,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_3"] = {
      x = 450,
      y = 275,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_4"] = {
      x = 450,
      y = 250,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_5"] = {
      x = 450,
      y = 225,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_6"] = {
      x = 450,
      y = 200,
      width = 8,
      height = 8
    },
     
    ["block_plattFrom_trap_7"] = {
      x = 450,
      y = 175,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_8"] = {
      x = 450,
      y = 125,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_9"] = {
      x = 410,
      y = 100,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_10"] = {
      x = 410,
      y = 175,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_11"] = {
      x = 410,
      y = 200,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_12"] = {
      x = 410,
      y = 225,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_13"] = {
      x = 410,
      y = 250,
      width = 8 ,
      height = 8
    },


    ["block_plattFrom_trap_14"] = {
      x = 410,
      y = 275,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_15"] = {
      x = 410,
      y = 300,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_16"] = {
      x = 410,
      y = 350,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_17"] = {
      x = 370,
      y = 100,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_18"] = {
      x = 370,
      y = 100,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_19"] = {
      x = 370,
      y = 100,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_20"] = {
      x = 370,
      y = 100,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_21"] = {
      x = 450,
      y = 325,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_22"] = {
      x = 370,
      y = 125,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_23"] = {
      x = 370,
      y = 150,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_24"] = {
      x = 370,
      y = 200,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_25"] = {
      x = 370,
      y = 225,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_26"] = {
      x = 370,
      y = 250,
      width = 8,
      height = 8
    },
     
    ["block_plattFrom_trap_27"] = {
      x = 370,
      y = 275,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_28"] = {
      x = 370,
      y = 325,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_29"] = {
      x = 370,
      y = 350,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_30"] = {
      x = 330,
      y = 100,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_31"] = {
      x = 330,
      y = 150,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_32"] = {
      x = 330,
      y = 175,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_33"] = {
      x = 330,
      y = 200,
      width = 8,
      height = 8
    },


    ["block_plattFrom_trap_34"] = {
      x = 330,
      y = 225,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_35"] = {
      x = 330,
      y = 275,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_36"] = {
      x = 330,
      y = 300,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_37"] = {
      x = 330,
      y = 325,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_38"] = {
      x = 290,
      y = 125,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_39"] = {
      x = 290,
      y = 150,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_40"] = {
      x = 290,
      y = 175,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_41"] = {
      x = 290,
      y = 200,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_42"] = {
      x = 290,
      y = 250,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_43"] = {
      x = 290,
      y = 300,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_44"] = {
      x = 290,
      y = 350,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_45"] = {
      x = 250,
      y = 100,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_46"] = {
      x = 250,
      y = 150,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_47"] = {
      x = 250,
      y = 200,
      width = 8 ,
      height = 8
    },
     
    ["block_plattFrom_trap_48"] = {
      x = 250,
      y = 250,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_49"] = {
      x = 250,
      y = 275,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_50"] = {
      x = 250,
      y = 325,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_51"] = {
      x = 250,
      y = 350,
      width = 8 ,
      height = 8
    },

    ["block_plattFrom_trap_52"] = {
      x = 210,
      y = 100,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_53"] = {
      x = 210,
      y = 125,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_54"] = {
      x = 210,
      y = 175,
      width = 8,
      height = 8
    },


    ["block_plattFrom_trap_55"] = {
      x = 210,
      y = 225,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_56"] = {
      x = 210,
      y = 250,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_57"] = {
      x = 210,
      y = 275,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_58"] = {
      x = 210,
      y = 300,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_59"] = {
      x = 210,
      y = 325,
      width = 8,
      height = 8
    },

    ["block_plattFrom_trap_60"] = {
      x = 210,
      y = 350,
      width = 8,
      height = 8
    },

    ["block_plattForm_1"] = {
      x = 450,
      y = 350,
      width = 8,
      height = 8
    },

    ["block_plattForm_2"] = {
      x = 410,
      y = 325,
      width = 8,
      height = 8
    },

    ["block_plattForm_3"] = {
      x = 370,
      y = 300,
      width = 8,
      height = 8
    },

    ["block_plattForm_4"] = {
      x = 330,
      y = 350,
      width = 8,
      height = 8
    },

    ["block_plattForm_5"] = {
      x = 290,
      y = 325,
      width = 8,
      height = 8
    },

    ["block_plattForm_6"] = {
      x = 250,
      y = 300,
      width = 8,
      height = 8
    },

    ["block_plattForm_7"] = {
      x = 290,
      y = 275,
      width = 8,
      height = 8
    },

    ["block_plattForm_8"] = {
      x = 330,
      y = 250,
      width = 8,
      height = 8
    },

    ["block_plattForm_9"] = {
      x = 290,
      y = 225,
      width = 8,
      height = 8
    },

    ["block_plattForm_10"] = {
      x = 250,
      y = 225,
      width = 8,
      height = 8
    },

    ["block_plattForm_11"] = {
      x = 210,
      y = 200,
      width = 8,
      height = 8
    },

    ["block_plattForm_12"] = {
      x = 250,
      y = 175,
      width = 8,
      height = 8
    },

    ["block_plattForm_13"] = {
      x = 210,
      y = 150,
      width = 8,
      height = 8
    },

    ["block_plattForm_14"] = {
      x = 250,
      y = 125,
      width = 8,
      height = 8
    },

    ["block_plattForm_15"] = {
      x = 290,
      y = 100,
      width = 8,
      height = 8
    },

    ["block_plattForm_16"] = {
      x = 330,
      y = 125,
      width = 8,
      height = 8
    },

    ["block_plattForm_17"] = {
      x = 370,
      y = 175,
      width = 8,
      height = 8
    },

    ["block_plattForm_18"] = {
      x = 410,
      y = 150,
      width = 8,
      height = 8
    },

    ["block_plattForm_19"] = {
      x = 450,
      y = 150,
      width = 8,
      height = 8
    },

    ["block_plattForm_20"] = {
      x = 410,
      y = 125,
      width = 8,
      height = 8
    },

    ["block_plattForm_21"] = {
      x = 450,
      y = 100,
      width = 8,
      height = 8
    },
    
  }

  blocks_5 = {
    ["block_plattForm_1"] = {
      x = 2,
      y = 390,
      width = 2,
      height = 2
    },

    ["block_plattForm_2"] = {
      x = 22,
      y = 50,
      width = 8,
      height = 380
    },

    ["block_plattForm_3"] = {
      x = 20,
      y = 360,
      width = 2,
      height = 2
    },

    ["block_plattForm_4"] = {
      x = 2,
      y = 330,
      width = 2,
      height = 2
    },

    ["block_plattForm_5"] = {
      x = 20,
      y = 300,
      width = 2,
      height = 2
    },

    ["block_plattForm_6"] = {
      x = 2,
      y = 270,
      width = 2,
      height = 2
    },

    ["block_plattForm_7"] = {
      x = 20,
      y = 240,
      width = 2,
      height = 2
    },

    ["block_plattForm_8"] = {
      x = 2,
      y = 210,
      width = 2,
      height = 2
    },

    ["block_plattForm_9"] = {
      x = 20,
      y = 180,
      width = 2,
      height = 2
    },

    ["block_plattForm_10"] = {
      x = 2,
      y = 150,
      width = 2,
      height = 2
    },

    ["block_plattForm_11"] = {
      x = 20,
      y = 120,
      width = 2,
      height = 2
    },

    ["block_plattForm_12"] = {
      x = 2,
      y = 90,
      width = 2,
      height = 2
    },

    ["block_plattForm_13"] = {
      x = 20,
      y = 60,
      width = 2,
      height = 2
    },

    ["block_plattForm_14"] = {
      x = 22,
      y = 50,
      width = 750,
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

function love.keypressed(r)
	if r == 'escape' then
		love.event.quit()
	end
  if r == "r" then
    player.setPosition(2, 580)
    retryCount = retryCount + 1
  end
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

  love.graphics.rectangle("fill", blocks.block_plattForm_secret_1.x, blocks.block_plattForm_secret_1.y, blocks.block_plattForm_secret_1.width, blocks.block_plattForm_secret_1.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_secret_2.x, blocks.block_plattForm_secret_2.y, blocks.block_plattForm_secret_2.width, blocks.block_plattForm_secret_2.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_secret_3.x, blocks.block_plattForm_secret_3.y, blocks.block_plattForm_secret_3.width, blocks.block_plattForm_secret_3.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_secret_4.x, blocks.block_plattForm_secret_4.y, blocks.block_plattForm_secret_4.width, blocks.block_plattForm_secret_4.height)
  love.graphics.rectangle("fill", blocks.block_plattForm_secret_5.x, blocks.block_plattForm_secret_5.y, blocks.block_plattForm_secret_5.width, blocks.block_plattForm_secret_5.height)

  love.graphics.rectangle("fill", blocks_2.block_plattForm_secret_1.x, blocks_2.block_plattForm_secret_1.y, blocks_2.block_plattForm_secret_1.width, blocks_2.block_plattForm_secret_1.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_secret_2.x, blocks_2.block_plattForm_secret_2.y, blocks_2.block_plattForm_secret_2.width, blocks_2.block_plattForm_secret_2.height)

  love.graphics.rectangle("fill", blocks.block_plattFrom_trap_1.x, blocks.block_plattFrom_trap_1.y, blocks.block_plattFrom_trap_1.width, blocks.block_plattFrom_trap_1.height)

  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_1.x, blocks_4.block_plattFrom_trap_1.y, blocks_4.block_plattFrom_trap_1.width, blocks_4.block_plattFrom_trap_1.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_2.x, blocks_4.block_plattFrom_trap_2.y, blocks_4.block_plattFrom_trap_2.width, blocks_4.block_plattFrom_trap_2.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_3.x, blocks_4.block_plattFrom_trap_3.y, blocks_4.block_plattFrom_trap_3.width, blocks_4.block_plattFrom_trap_3.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_4.x, blocks_4.block_plattFrom_trap_4.y, blocks_4.block_plattFrom_trap_4.width, blocks_4.block_plattFrom_trap_4.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_5.x, blocks_4.block_plattFrom_trap_5.y, blocks_4.block_plattFrom_trap_5.width, blocks_4.block_plattFrom_trap_5.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_6.x, blocks_4.block_plattFrom_trap_6.y, blocks_4.block_plattFrom_trap_6.width, blocks_4.block_plattFrom_trap_6.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_7.x, blocks_4.block_plattFrom_trap_7.y, blocks_4.block_plattFrom_trap_7.width, blocks_4.block_plattFrom_trap_7.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_8.x, blocks_4.block_plattFrom_trap_8.y, blocks_4.block_plattFrom_trap_8.width, blocks_4.block_plattFrom_trap_8.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_9.x, blocks_4.block_plattFrom_trap_9.y, blocks_4.block_plattFrom_trap_9.width, blocks_4.block_plattFrom_trap_9.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_10.x, blocks_4.block_plattFrom_trap_10.y, blocks_4.block_plattFrom_trap_10.width, blocks_4.block_plattFrom_trap_10.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_11.x, blocks_4.block_plattFrom_trap_11.y, blocks_4.block_plattFrom_trap_11.width, blocks_4.block_plattFrom_trap_11.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_12.x, blocks_4.block_plattFrom_trap_12.y, blocks_4.block_plattFrom_trap_12.width, blocks_4.block_plattFrom_trap_12.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_13.x, blocks_4.block_plattFrom_trap_13.y, blocks_4.block_plattFrom_trap_13.width, blocks_4.block_plattFrom_trap_13.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_14.x, blocks_4.block_plattFrom_trap_14.y, blocks_4.block_plattFrom_trap_14.width, blocks_4.block_plattFrom_trap_14.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_15.x, blocks_4.block_plattFrom_trap_15.y, blocks_4.block_plattFrom_trap_15.width, blocks_4.block_plattFrom_trap_15.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_16.x, blocks_4.block_plattFrom_trap_16.y, blocks_4.block_plattFrom_trap_16.width, blocks_4.block_plattFrom_trap_16.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_17.x, blocks_4.block_plattFrom_trap_17.y, blocks_4.block_plattFrom_trap_17.width, blocks_4.block_plattFrom_trap_17.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_18.x, blocks_4.block_plattFrom_trap_18.y, blocks_4.block_plattFrom_trap_18.width, blocks_4.block_plattFrom_trap_18.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_19.x, blocks_4.block_plattFrom_trap_19.y, blocks_4.block_plattFrom_trap_19.width, blocks_4.block_plattFrom_trap_19.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_20.x, blocks_4.block_plattFrom_trap_20.y, blocks_4.block_plattFrom_trap_20.width, blocks_4.block_plattFrom_trap_20.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_21.x, blocks_4.block_plattFrom_trap_21.y, blocks_4.block_plattFrom_trap_21.width, blocks_4.block_plattFrom_trap_21.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_22.x, blocks_4.block_plattFrom_trap_22.y, blocks_4.block_plattFrom_trap_22.width, blocks_4.block_plattFrom_trap_22.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_23.x, blocks_4.block_plattFrom_trap_23.y, blocks_4.block_plattFrom_trap_23.width, blocks_4.block_plattFrom_trap_23.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_24.x, blocks_4.block_plattFrom_trap_24.y, blocks_4.block_plattFrom_trap_24.width, blocks_4.block_plattFrom_trap_24.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_25.x, blocks_4.block_plattFrom_trap_25.y, blocks_4.block_plattFrom_trap_25.width, blocks_4.block_plattFrom_trap_25.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_26.x, blocks_4.block_plattFrom_trap_26.y, blocks_4.block_plattFrom_trap_26.width, blocks_4.block_plattFrom_trap_26.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_27.x, blocks_4.block_plattFrom_trap_27.y, blocks_4.block_plattFrom_trap_27.width, blocks_4.block_plattFrom_trap_27.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_28.x, blocks_4.block_plattFrom_trap_28.y, blocks_4.block_plattFrom_trap_28.width, blocks_4.block_plattFrom_trap_28.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_29.x, blocks_4.block_plattFrom_trap_29.y, blocks_4.block_plattFrom_trap_29.width, blocks_4.block_plattFrom_trap_29.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_30.x, blocks_4.block_plattFrom_trap_30.y, blocks_4.block_plattFrom_trap_30.width, blocks_4.block_plattFrom_trap_30.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_31.x, blocks_4.block_plattFrom_trap_31.y, blocks_4.block_plattFrom_trap_31.width, blocks_4.block_plattFrom_trap_31.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_32.x, blocks_4.block_plattFrom_trap_32.y, blocks_4.block_plattFrom_trap_32.width, blocks_4.block_plattFrom_trap_32.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_33.x, blocks_4.block_plattFrom_trap_33.y, blocks_4.block_plattFrom_trap_33.width, blocks_4.block_plattFrom_trap_33.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_34.x, blocks_4.block_plattFrom_trap_34.y, blocks_4.block_plattFrom_trap_34.width, blocks_4.block_plattFrom_trap_34.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_35.x, blocks_4.block_plattFrom_trap_35.y, blocks_4.block_plattFrom_trap_35.width, blocks_4.block_plattFrom_trap_35.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_36.x, blocks_4.block_plattFrom_trap_36.y, blocks_4.block_plattFrom_trap_36.width, blocks_4.block_plattFrom_trap_36.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_37.x, blocks_4.block_plattFrom_trap_37.y, blocks_4.block_plattFrom_trap_37.width, blocks_4.block_plattFrom_trap_17.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_38.x, blocks_4.block_plattFrom_trap_38.y, blocks_4.block_plattFrom_trap_38.width, blocks_4.block_plattFrom_trap_38.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_39.x, blocks_4.block_plattFrom_trap_39.y, blocks_4.block_plattFrom_trap_39.width, blocks_4.block_plattFrom_trap_39.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_40.x, blocks_4.block_plattFrom_trap_40.y, blocks_4.block_plattFrom_trap_40.width, blocks_4.block_plattFrom_trap_40.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_41.x, blocks_4.block_plattFrom_trap_41.y, blocks_4.block_plattFrom_trap_41.width, blocks_4.block_plattFrom_trap_41.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_42.x, blocks_4.block_plattFrom_trap_42.y, blocks_4.block_plattFrom_trap_42.width, blocks_4.block_plattFrom_trap_42.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_43.x, blocks_4.block_plattFrom_trap_43.y, blocks_4.block_plattFrom_trap_43.width, blocks_4.block_plattFrom_trap_43.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_44.x, blocks_4.block_plattFrom_trap_44.y, blocks_4.block_plattFrom_trap_44.width, blocks_4.block_plattFrom_trap_44.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_45.x, blocks_4.block_plattFrom_trap_45.y, blocks_4.block_plattFrom_trap_45.width, blocks_4.block_plattFrom_trap_45.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_46.x, blocks_4.block_plattFrom_trap_46.y, blocks_4.block_plattFrom_trap_46.width, blocks_4.block_plattFrom_trap_46.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_47.x, blocks_4.block_plattFrom_trap_47.y, blocks_4.block_plattFrom_trap_47.width, blocks_4.block_plattFrom_trap_47.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_48.x, blocks_4.block_plattFrom_trap_48.y, blocks_4.block_plattFrom_trap_48.width, blocks_4.block_plattFrom_trap_48.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_49.x, blocks_4.block_plattFrom_trap_49.y, blocks_4.block_plattFrom_trap_49.width, blocks_4.block_plattFrom_trap_49.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_50.x, blocks_4.block_plattFrom_trap_50.y, blocks_4.block_plattFrom_trap_50.width, blocks_4.block_plattFrom_trap_50.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_51.x, blocks_4.block_plattFrom_trap_51.y, blocks_4.block_plattFrom_trap_51.width, blocks_4.block_plattFrom_trap_51.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_52.x, blocks_4.block_plattFrom_trap_52.y, blocks_4.block_plattFrom_trap_52.width, blocks_4.block_plattFrom_trap_52.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_53.x, blocks_4.block_plattFrom_trap_53.y, blocks_4.block_plattFrom_trap_53.width, blocks_4.block_plattFrom_trap_53.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_54.x, blocks_4.block_plattFrom_trap_54.y, blocks_4.block_plattFrom_trap_54.width, blocks_4.block_plattFrom_trap_54.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_55.x, blocks_4.block_plattFrom_trap_55.y, blocks_4.block_plattFrom_trap_55.width, blocks_4.block_plattFrom_trap_55.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_56.x, blocks_4.block_plattFrom_trap_56.y, blocks_4.block_plattFrom_trap_56.width, blocks_4.block_plattFrom_trap_56.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_57.x, blocks_4.block_plattFrom_trap_57.y, blocks_4.block_plattFrom_trap_57.width, blocks_4.block_plattFrom_trap_57.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_58.x, blocks_4.block_plattFrom_trap_58.y, blocks_4.block_plattFrom_trap_58.width, blocks_4.block_plattFrom_trap_58.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_59.x, blocks_4.block_plattFrom_trap_59.y, blocks_4.block_plattFrom_trap_59.width, blocks_4.block_plattFrom_trap_59.height)
  love.graphics.rectangle("fill", blocks_4.block_plattFrom_trap_60.x, blocks_4.block_plattFrom_trap_60.y, blocks_4.block_plattFrom_trap_60.width, blocks_4.block_plattFrom_trap_60.height)

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
  love.graphics.rectangle("fill", blocks_2.block_plattForm_5.x, blocks_2.block_plattForm_5.y, blocks_2.block_plattForm_5.width, blocks_2.block_plattForm_5.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_6.x, blocks_2.block_plattForm_6.y, blocks_2.block_plattForm_6.width, blocks_2.block_plattForm_6.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_7.x, blocks_2.block_plattForm_7.y, blocks_2.block_plattForm_7.width, blocks_2.block_plattForm_7.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_8.x, blocks_2.block_plattForm_8.y, blocks_2.block_plattForm_8.width, blocks_2.block_plattForm_8.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_9.x, blocks_2.block_plattForm_9.y, blocks_2.block_plattForm_9.width, blocks_2.block_plattForm_9.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_10.x, blocks_2.block_plattForm_10.y, blocks_2.block_plattForm_10.width, blocks_2.block_plattForm_10.height)
  love.graphics.rectangle("fill", blocks_2.block_plattForm_11.x, blocks_2.block_plattForm_11.y, blocks_2.block_plattForm_11.width, blocks_2.block_plattForm_11.height)

  love.graphics.rectangle("fill", blocks_3.block_plattForm_1.x, blocks_3.block_plattForm_1.y, blocks_3.block_plattForm_1.width, blocks_3.block_plattForm_1.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_2.x, blocks_3.block_plattForm_2.y, blocks_3.block_plattForm_2.width, blocks_3.block_plattForm_2.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_3.x, blocks_3.block_plattForm_3.y, blocks_3.block_plattForm_3.width, blocks_3.block_plattForm_3.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_4.x, blocks_3.block_plattForm_4.y, blocks_3.block_plattForm_4.width, blocks_3.block_plattForm_4.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_5.x, blocks_3.block_plattForm_5.y, blocks_3.block_plattForm_5.width, blocks_3.block_plattForm_5.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_6.x, blocks_3.block_plattForm_6.y, blocks_3.block_plattForm_6.width, blocks_3.block_plattForm_6.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_7.x, blocks_3.block_plattForm_7.y, blocks_3.block_plattForm_7.width, blocks_3.block_plattForm_7.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_8.x, blocks_3.block_plattForm_8.y, blocks_3.block_plattForm_8.width, blocks_3.block_plattForm_8.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_9.x, blocks_3.block_plattForm_9.y, blocks_3.block_plattForm_9.width, blocks_3.block_plattForm_9.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_10.x, blocks_3.block_plattForm_10.y, blocks_3.block_plattForm_10.width, blocks_3.block_plattForm_10.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_11.x, blocks_3.block_plattForm_11.y, blocks_3.block_plattForm_11.width, blocks_3.block_plattForm_11.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_12.x, blocks_3.block_plattForm_12.y, blocks_3.block_plattForm_12.width, blocks_3.block_plattForm_12.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_13.x, blocks_3.block_plattForm_13.y, blocks_3.block_plattForm_13.width, blocks_3.block_plattForm_13.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_14.x, blocks_3.block_plattForm_14.y, blocks_3.block_plattForm_14.width, blocks_3.block_plattForm_14.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_15.x, blocks_3.block_plattForm_15.y, blocks_3.block_plattForm_15.width, blocks_3.block_plattForm_15.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_16.x, blocks_3.block_plattForm_16.y, blocks_3.block_plattForm_16.width, blocks_3.block_plattForm_16.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_17.x, blocks_3.block_plattForm_17.y, blocks_3.block_plattForm_17.width, blocks_3.block_plattForm_17.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_18.x, blocks_3.block_plattForm_18.y, blocks_3.block_plattForm_18.width, blocks_3.block_plattForm_18.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_19.x, blocks_3.block_plattForm_19.y, blocks_3.block_plattForm_19.width, blocks_3.block_plattForm_19.height)
  love.graphics.rectangle("fill", blocks_3.block_plattForm_20.x, blocks_3.block_plattForm_20.y, blocks_3.block_plattForm_20.width, blocks_3.block_plattForm_20.height)

  love.graphics.rectangle("fill", blocks_4.block_plattForm_1.x, blocks_4.block_plattForm_1.y, blocks_4.block_plattForm_1.width, blocks_4.block_plattForm_1.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_2.x, blocks_4.block_plattForm_2.y, blocks_4.block_plattForm_2.width, blocks_4.block_plattForm_2.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_3.x, blocks_4.block_plattForm_3.y, blocks_4.block_plattForm_3.width, blocks_4.block_plattForm_3.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_4.x, blocks_4.block_plattForm_4.y, blocks_4.block_plattForm_4.width, blocks_4.block_plattForm_4.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_5.x, blocks_4.block_plattForm_5.y, blocks_4.block_plattForm_5.width, blocks_4.block_plattForm_5.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_6.x, blocks_4.block_plattForm_6.y, blocks_4.block_plattForm_6.width, blocks_4.block_plattForm_6.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_7.x, blocks_4.block_plattForm_7.y, blocks_4.block_plattForm_7.width, blocks_4.block_plattForm_7.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_8.x, blocks_4.block_plattForm_8.y, blocks_4.block_plattForm_8.width, blocks_4.block_plattForm_8.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_9.x, blocks_4.block_plattForm_9.y, blocks_4.block_plattForm_9.width, blocks_4.block_plattForm_9.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_10.x, blocks_4.block_plattForm_10.y, blocks_4.block_plattForm_10.width, blocks_4.block_plattForm_10.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_11.x, blocks_4.block_plattForm_11.y, blocks_4.block_plattForm_11.width, blocks_4.block_plattForm_11.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_12.x, blocks_4.block_plattForm_12.y, blocks_4.block_plattForm_12.width, blocks_4.block_plattForm_12.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_13.x, blocks_4.block_plattForm_13.y, blocks_4.block_plattForm_13.width, blocks_4.block_plattForm_13.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_14.x, blocks_4.block_plattForm_14.y, blocks_4.block_plattForm_14.width, blocks_4.block_plattForm_14.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_15.x, blocks_4.block_plattForm_15.y, blocks_4.block_plattForm_15.width, blocks_4.block_plattForm_15.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_16.x, blocks_4.block_plattForm_16.y, blocks_4.block_plattForm_16.width, blocks_4.block_plattForm_16.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_17.x, blocks_4.block_plattForm_17.y, blocks_4.block_plattForm_17.width, blocks_4.block_plattForm_17.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_18.x, blocks_4.block_plattForm_18.y, blocks_4.block_plattForm_18.width, blocks_4.block_plattForm_18.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_19.x, blocks_4.block_plattForm_19.y, blocks_4.block_plattForm_19.width, blocks_4.block_plattForm_19.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_20.x, blocks_4.block_plattForm_20.y, blocks_4.block_plattForm_20.width, blocks_4.block_plattForm_20.height)
  love.graphics.rectangle("fill", blocks_4.block_plattForm_21.x, blocks_4.block_plattForm_21.y, blocks_4.block_plattForm_21.width, blocks_4.block_plattForm_21.height)

  love.graphics.rectangle("fill", blocks.block_plattForm_divider.x, blocks.block_plattForm_divider.y, blocks.block_plattForm_divider.width, blocks.block_plattForm_divider.height)
end

function love.load()
  player.setPosition(2, 580)
  world:add(player, player.x, player.y, player.width, player.height)

  world:add(blocks.block_Baseplate, blocks.block_Baseplate.x, blocks.block_Baseplate.y, blocks.block_Baseplate.width, blocks.block_Baseplate.height)
  world:add(blocks.block_borderWallLeft, blocks.block_borderWallLeft.x, blocks.block_borderWallLeft.y, blocks.block_borderWallLeft.width, blocks.block_borderWallLeft.height)
  world:add(blocks.block_borderWallRight, blocks.block_borderWallRight.x, blocks.block_borderWallRight.y, blocks.block_borderWallRight.width, blocks.block_borderWallRight.height)
    world:add(blocks.block_plattForm_secret_3, blocks.block_plattForm_secret_3.x, blocks.block_plattForm_secret_3.y, blocks.block_plattForm_secret_3.width, blocks.block_plattForm_secret_3.height)

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

  world:add(blocks_3.block_plattForm_1, blocks_3.block_plattForm_1.x, blocks_3.block_plattForm_1.y, blocks_3.block_plattForm_1.width, blocks_3.block_plattForm_1.height)
  world:add(blocks_3.block_plattForm_2, blocks_3.block_plattForm_2.x, blocks_3.block_plattForm_2.y, blocks_3.block_plattForm_2.width, blocks_3.block_plattForm_2.height)
  world:add(blocks_3.block_plattForm_3, blocks_3.block_plattForm_3.x, blocks_3.block_plattForm_3.y, blocks_3.block_plattForm_3.width, blocks_3.block_plattForm_3.height)
  world:add(blocks_3.block_plattForm_4, blocks_3.block_plattForm_4.x, blocks_3.block_plattForm_4.y, blocks_3.block_plattForm_4.width, blocks_3.block_plattForm_4.height)
  world:add(blocks_3.block_plattForm_5, blocks_3.block_plattForm_5.x, blocks_3.block_plattForm_5.y, blocks_3.block_plattForm_5.width, blocks_3.block_plattForm_5.height)
  world:add(blocks_3.block_plattForm_6, blocks_3.block_plattForm_6.x, blocks_3.block_plattForm_6.y, blocks_3.block_plattForm_6.width, blocks_3.block_plattForm_6.height)
  world:add(blocks_3.block_plattForm_7, blocks_3.block_plattForm_7.x, blocks_3.block_plattForm_7.y, blocks_3.block_plattForm_7.width, blocks_3.block_plattForm_7.height)
  world:add(blocks_3.block_plattForm_8, blocks_3.block_plattForm_8.x, blocks_3.block_plattForm_8.y, blocks_3.block_plattForm_8.width, blocks_3.block_plattForm_8.height)
  world:add(blocks_3.block_plattForm_9, blocks_3.block_plattForm_9.x, blocks_3.block_plattForm_9.y, blocks_3.block_plattForm_9.width, blocks_3.block_plattForm_9.height)
  world:add(blocks_3.block_plattForm_10, blocks_3.block_plattForm_10.x, blocks_3.block_plattForm_10.y, blocks_3.block_plattForm_10.width, blocks_3.block_plattForm_10.height)
  world:add(blocks_3.block_plattForm_11, blocks_3.block_plattForm_11.x, blocks_3.block_plattForm_11.y, blocks_3.block_plattForm_11.width, blocks_3.block_plattForm_11.height)
  world:add(blocks_3.block_plattForm_12, blocks_3.block_plattForm_12.x, blocks_3.block_plattForm_12.y, blocks_3.block_plattForm_12.width, blocks_3.block_plattForm_12.height)
  world:add(blocks_3.block_plattForm_13, blocks_3.block_plattForm_13.x, blocks_3.block_plattForm_13.y, blocks_3.block_plattForm_13.width, blocks_3.block_plattForm_13.height)
  world:add(blocks_3.block_plattForm_14, blocks_3.block_plattForm_14.x, blocks_3.block_plattForm_14.y, blocks_3.block_plattForm_14.width, blocks_3.block_plattForm_14.height)
  world:add(blocks_3.block_plattForm_15, blocks_3.block_plattForm_15.x, blocks_3.block_plattForm_15.y, blocks_3.block_plattForm_15.width, blocks_3.block_plattForm_15.height)
  world:add(blocks_3.block_plattForm_16, blocks_3.block_plattForm_16.x, blocks_3.block_plattForm_16.y, blocks_3.block_plattForm_16.width, blocks_3.block_plattForm_16.height)
  world:add(blocks_3.block_plattForm_17, blocks_3.block_plattForm_17.x, blocks_3.block_plattForm_17.y, blocks_3.block_plattForm_17.width, blocks_3.block_plattForm_17.height)
  world:add(blocks_3.block_plattForm_18, blocks_3.block_plattForm_18.x, blocks_3.block_plattForm_18.y, blocks_3.block_plattForm_18.width, blocks_3.block_plattForm_18.height)
  world:add(blocks_3.block_plattForm_19, blocks_3.block_plattForm_19.x, blocks_3.block_plattForm_19.y, blocks_3.block_plattForm_19.width, blocks_3.block_plattForm_19.height)
  world:add(blocks_3.block_plattForm_20, blocks_3.block_plattForm_20.x, blocks_3.block_plattForm_20.y, blocks_3.block_plattForm_20.width, blocks_3.block_plattForm_20.height)

  world:add(blocks_4.block_plattForm_1, blocks_4.block_plattForm_1.x, blocks_4.block_plattForm_1.y, blocks_4.block_plattForm_1.width, blocks_4.block_plattForm_1.height)
  world:add(blocks_4.block_plattForm_2, blocks_4.block_plattForm_2.x, blocks_4.block_plattForm_2.y, blocks_4.block_plattForm_2.width, blocks_4.block_plattForm_2.height)
  world:add(blocks_4.block_plattForm_3, blocks_4.block_plattForm_3.x, blocks_4.block_plattForm_3.y, blocks_4.block_plattForm_3.width, blocks_4.block_plattForm_3.height)
  world:add(blocks_4.block_plattForm_4, blocks_4.block_plattForm_4.x, blocks_4.block_plattForm_4.y, blocks_4.block_plattForm_4.width, blocks_4.block_plattForm_4.height)
  world:add(blocks_4.block_plattForm_5, blocks_4.block_plattForm_5.x, blocks_4.block_plattForm_5.y, blocks_4.block_plattForm_5.width, blocks_4.block_plattForm_5.height)
  world:add(blocks_4.block_plattForm_6, blocks_4.block_plattForm_6.x, blocks_4.block_plattForm_6.y, blocks_4.block_plattForm_6.width, blocks_4.block_plattForm_6.height)
  world:add(blocks_4.block_plattForm_7, blocks_4.block_plattForm_7.x, blocks_4.block_plattForm_7.y, blocks_4.block_plattForm_7.width, blocks_4.block_plattForm_7.height)
  world:add(blocks_4.block_plattForm_8, blocks_4.block_plattForm_8.x, blocks_4.block_plattForm_8.y, blocks_4.block_plattForm_8.width, blocks_4.block_plattForm_8.height)
  world:add(blocks_4.block_plattForm_9, blocks_4.block_plattForm_9.x, blocks_4.block_plattForm_9.y, blocks_4.block_plattForm_9.width, blocks_4.block_plattForm_9.height)
  world:add(blocks_4.block_plattForm_10, blocks_4.block_plattForm_10.x, blocks_4.block_plattForm_10.y, blocks_4.block_plattForm_10.width, blocks_4.block_plattForm_10.height)
  world:add(blocks_4.block_plattForm_11, blocks_4.block_plattForm_11.x, blocks_4.block_plattForm_11.y, blocks_4.block_plattForm_11.width, blocks_4.block_plattForm_11.height)
  world:add(blocks_4.block_plattForm_12, blocks_4.block_plattForm_12.x, blocks_4.block_plattForm_12.y, blocks_4.block_plattForm_12.width, blocks_4.block_plattForm_12.height)
  world:add(blocks_4.block_plattForm_13, blocks_4.block_plattForm_13.x, blocks_4.block_plattForm_13.y, blocks_4.block_plattForm_13.width, blocks_4.block_plattForm_13.height)
  world:add(blocks_4.block_plattForm_14, blocks_4.block_plattForm_14.x, blocks_4.block_plattForm_14.y, blocks_4.block_plattForm_14.width, blocks_4.block_plattForm_14.height)
  world:add(blocks_4.block_plattForm_15, blocks_4.block_plattForm_15.x, blocks_4.block_plattForm_15.y, blocks_4.block_plattForm_15.width, blocks_4.block_plattForm_15.height)
  world:add(blocks_4.block_plattForm_16, blocks_4.block_plattForm_16.x, blocks_4.block_plattForm_16.y, blocks_4.block_plattForm_16.width, blocks_4.block_plattForm_16.height)
  world:add(blocks_4.block_plattForm_17, blocks_4.block_plattForm_17.x, blocks_4.block_plattForm_17.y, blocks_4.block_plattForm_17.width, blocks_4.block_plattForm_17.height)
  world:add(blocks_4.block_plattForm_18, blocks_4.block_plattForm_18.x, blocks_4.block_plattForm_18.y, blocks_4.block_plattForm_18.width, blocks_4.block_plattForm_18.height)
  world:add(blocks_4.block_plattForm_19, blocks_4.block_plattForm_19.x, blocks_4.block_plattForm_19.y, blocks_4.block_plattForm_19.width, blocks_4.block_plattForm_19.height)
  world:add(blocks_4.block_plattForm_20, blocks_4.block_plattForm_20.x, blocks_4.block_plattForm_20.y, blocks_4.block_plattForm_20.width, blocks_4.block_plattForm_20.height)
  world:add(blocks_4.block_plattForm_21, blocks_4.block_plattForm_21.x, blocks_4.block_plattForm_21.y, blocks_4.block_plattForm_21.width, blocks_4.block_plattForm_21.height)

  world:add(blocks_5.block_plattForm_1, blocks_5.block_plattForm_1.x, blocks_5.block_plattForm_1.y, blocks_5.block_plattForm_1.width, blocks_5.block_plattForm_1.height)
  world:add(blocks_5.block_plattForm_2, blocks_5.block_plattForm_2.x, blocks_5.block_plattForm_2.y, blocks_5.block_plattForm_2.width, blocks_5.block_plattForm_2.height)
  world:add(blocks_5.block_plattForm_3, blocks_5.block_plattForm_3.x, blocks_5.block_plattForm_3.y, blocks_5.block_plattForm_3.width, blocks_5.block_plattForm_3.height)
  world:add(blocks_5.block_plattForm_4, blocks_5.block_plattForm_4.x, blocks_5.block_plattForm_4.y, blocks_5.block_plattForm_4.width, blocks_5.block_plattForm_4.height)
  world:add(blocks_5.block_plattForm_5, blocks_5.block_plattForm_5.x, blocks_5.block_plattForm_5.y, blocks_5.block_plattForm_5.width, blocks_5.block_plattForm_5.height)
  world:add(blocks_5.block_plattForm_6, blocks_5.block_plattForm_6.x, blocks_5.block_plattForm_6.y, blocks_5.block_plattForm_6.width, blocks_5.block_plattForm_6.height)
  world:add(blocks_5.block_plattForm_7, blocks_5.block_plattForm_7.x, blocks_5.block_plattForm_7.y, blocks_5.block_plattForm_7.width, blocks_5.block_plattForm_7.height)
  world:add(blocks_5.block_plattForm_8, blocks_5.block_plattForm_8.x, blocks_5.block_plattForm_8.y, blocks_5.block_plattForm_8.width, blocks_5.block_plattForm_8.height)
  world:add(blocks_5.block_plattForm_9, blocks_5.block_plattForm_9.x, blocks_5.block_plattForm_9.y, blocks_5.block_plattForm_9.width, blocks_5.block_plattForm_9.height)
  world:add(blocks_5.block_plattForm_10, blocks_5.block_plattForm_10.x, blocks_5.block_plattForm_10.y, blocks_5.block_plattForm_10.width, blocks_5.block_plattForm_10.height)
  world:add(blocks_5.block_plattForm_11, blocks_5.block_plattForm_11.x, blocks_5.block_plattForm_11.y, blocks_5.block_plattForm_11.width, blocks_5.block_plattForm_11.height)
  world:add(blocks_5.block_plattForm_12, blocks_5.block_plattForm_12.x, blocks_5.block_plattForm_12.y, blocks_5.block_plattForm_12.width, blocks_5.block_plattForm_12.height)
  world:add(blocks_5.block_plattForm_13, blocks_5.block_plattForm_13.x, blocks_5.block_plattForm_13.y, blocks_5.block_plattForm_13.width, blocks_5.block_plattForm_13.height)
  world:add(blocks_5.block_plattForm_14, blocks_5.block_plattForm_14.x, blocks_5.block_plattForm_14.y, blocks_5.block_plattForm_14.width, blocks_5.block_plattForm_14.height)

  world:add(blocks.block_plattForm_divider, blocks.block_plattForm_divider.x, blocks.block_plattForm_divider.y, blocks.block_plattForm_divider.width, blocks.block_plattForm_divider.height)
end


