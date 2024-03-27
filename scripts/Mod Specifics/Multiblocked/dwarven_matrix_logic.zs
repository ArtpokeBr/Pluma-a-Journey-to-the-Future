#modloaded multiblocked
#loader multiblocked

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.MBDParticle;
import mods.multiblocked.tile.Controller;
import mods.multiblocked.functions.IUpdateFormed;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.functions.IReceiveCustomData;
import mods.multiblocked.tile.Component;
import mods.multiblocked.client.LaserParticle;
import mods.multiblocked.client.TextureParticle;

import crafttweaker.data.IData;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.util.IRandom;

val definition = MBDRegistry.getDefinition("pluma:dwarven_matrix") as ControllerDefinition;

definition.updateFormed = function (controller as Controller) {
    if (!isNull(controller.recipeLogic) && controller.recipeLogic.isWorking) {
        if (controller.timer % 10 == 0) {
            controller.sendCustomData(0, "xxx");
        }
    }
} as IUpdateFormed;

definition.receiveCustomData = function (component as Component, id as int, data as IData) {
    val controller = component as Controller;
    if (id == 0) {
        for i in 0 to 20 {
            val rand = controller.world.random;
            val start = controller.pos.asPosition3f();
                start.x = start.x + 3.5;
                start.y = start.y + 2.7;
                start.z = start.z + 0.5;
            val particle = MBDParticle.texture(controller.world, start) as TextureParticle;
            val vecX = (rand.nextFloat() * 2 - 1) * 0.1F;
            val vecY = (rand.nextFloat() * 2 - 1) * 0.1F;
            val vecZ = (rand.nextFloat() * 2 - 1) * 0.1F;
            particle.setMotion(vecX, vecY, vecZ);
            particle.setBackLayer(true);
            particle.setMotionless(true);
            particle.setAddBlend(true);
            val alpha = (rand.nextInt(100) + 100);
            particle.setColor(alpha, 255, 163, 5); //ARGB
            particle.setTexture("multiblocked:textures/fx/particle_star.png");
            particle.setScale(1);
            particle.setTexturesCount(1);
            particle.setTexturesIndex(0, 0);
            particle.setLightingMap(15, 15);
            particle.setLife(30);
            particle.create();
        }
    }
} as IReceiveCustomData;
