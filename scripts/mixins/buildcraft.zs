#modloaded buildcraftfactory theoneprobe
#loader mixin

import native.net.minecraft.entity.player.EntityPlayer;
import native.net.minecraft.block.state.IBlockState;
import native.net.minecraft.world.World;
import native.net.minecraft.item.ItemStack;
import native.net.minecraftforge.fluids.FluidStack;
import native.net.minecraftforge.fluids.FluidUtil;
import native.buildcraft.factory.tile.TileTank;
import native.mcjty.theoneprobe.api.IProbeInfoAccessor;
import native.mcjty.theoneprobe.api.IProbeInfo;
import native.mcjty.theoneprobe.api.IProbeHitData;
import native.mcjty.theoneprobe.api.ProbeMode;

/*
BuildCraft's own Tank block instantiates buildcraft.factory.tile.TileTank directly (same TE
class Iron Tanks' TankTile extends, see scripts/mods/mixins/irontanks.zs) - same public `tank`
field, same approach, just targeting BlockTank itself instead of a subclass tile.
*/
#mixin {targets: "buildcraft.factory.block.BlockTank"}
zenClass MixinBlockTank extends IProbeInfoAccessor {

    function addProbeInfo(mode as ProbeMode, info as IProbeInfo, player as EntityPlayer, world as World, state as IBlockState, data as IProbeHitData) as void {
        val tile = world.getTileEntity(data.getPos()) as TileTank;
        if (tile == null) {
            return;
        }

        val fluid = tile.tank.getFluid() as FluidStack;
        val capacity = tile.tank.getCapacity();

        if (fluid != null && fluid.amount > 0) {
            info.progress(fluid.amount, capacity);

            val fluidRow = info.horizontal();
            val bucket = FluidUtil.getFilledBucket(fluid) as ItemStack;
            if (bucket != null && bucket.getCount() > 0) {
                fluidRow.item(bucket);
            }
            fluidRow.fluidLabel(fluid);
        } else {
            info.text("Empty");
        }
    }
}
