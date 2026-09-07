#modloaded roots
#loader mixin

import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;
import native.net.minecraft.world.World;
import native.net.minecraft.util.math.BlockPos;
import native.net.minecraft.block.state.IBlockState;
import native.java.util.Random;

/*
Aqueous Soil auto-harvests fully-grown crops above it, and on random ticks has a 1-in-5
chance to force-grow them. Neither behavior has a native config toggle.

This mixin disables both when the Aqueous Soil block is receiving any redstone signal:

- shouldHarvest is the shared gate called from both the random-tick path and the
  CropGrowEvent$Post path, so injecting there suppresses all auto-harvesting.
  cropPos is the crop position; soil is at cropPos.down() (func_177977_b).

- func_180650_b (updateTick) is cancelled entirely when powered, which also suppresses
  the 1-in-5 force-grow bonus that bypasses shouldHarvest.

Redstone check: World.func_175687_A(BlockPos) returns the aggregate redstone power level
(0-15) at a position, confirmed from CoFH TileRSControl bytecode.

shouldHarvest is a private Roots method so no SRG obfuscation applies to its name.
*/
#mixin {targets: "epicsquid.roots.block.BlockElementalSoil"}
zenClass MixinAqueousSoilRedstone {

    #mixin Inject
    #{
    #   method: "shouldHarvest(Lnet/minecraft/world/World;Lnet/minecraft/util/math/BlockPos;)Z",
    #   at: {value: "HEAD"},
    #   cancellable: true
    #}
    function aeternum_noHarvestWhenPowered(world as World, cropPos as BlockPos, cir as CallbackInfoReturnable) as void {
        val soilPos = cropPos.func_177977_b() as BlockPos;
        if (world.func_175687_A(soilPos) > 0) {
            cir.setReturnValue(false);
        }
    }

    #mixin Inject
    #{
    #   method: "func_180650_b",
    #   at: {value: "HEAD"},
    #   cancellable: true
    #}
    function aeternum_noTickWhenPowered(world as World, pos as BlockPos, state as IBlockState, random as Random, ci as CallbackInfo) as void {
        if (world.func_175687_A(pos) > 0) {
            ci.cancel();
        }
    }
}
