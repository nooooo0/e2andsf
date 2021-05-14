--@name cursed
--@author
--@client
--@model models/beer/wiremod/gate_e2.mdl
-- this is a crime against e2 users
gearmat = material.load("expression 2/cog_world")
rad = math.rad(80)
chip():setColor(Color(0,0,0))
chip():setMaterial("models/XQM/BoxFull_diffuse")
bass.loadFile("sound/music/hl2_song13.mp3","3d noblock",function(Sound,error,name)
    Sound:play()
    Sound:setLooping(true)
    Sound:setPos(chip():getPos())
end)
timer.create("expression2_particles",1,0,function()
    --print(tostring(particle.particleEmittersLeft()))
     rad = -rad
    paremit = particle.create(chip():getPos(),false)
    gear = paremit:add(gearmat,chip():getPos()+Vector(0,0,10),10,10,0,0,255,0,7)
    --gear:setMaterial(gearmat)
    gear:setLighting(false)
    gear:setColor(Color(0,255,0))
    gear:setVelocity(Vector(0,0,17)) 
    gear:setRollDelta(rad)
    timer.simple(7,function()
        paremit:destroy()
    end)
end)

