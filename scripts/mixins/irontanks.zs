#modloaded irontanks theoneprobe
#loader mixin

import native.net.minecraft.entity.player.EntityPlayer;
import native.net.minecraft.block.state.IBlockState;
import native.net.minecraft.world.World;
import native.net.minecraft.item.ItemStack;
import native.net.minecraftforge.fluids.FluidStack;
import native.net.minecraftforge.fluids.FluidUtil;
import native.com.indemnity83.irontanks.common.tiles.TankTile;
import native.mcjty.theoneprobe.api.IProbeInfoAccessor;
import native.mcjty.theoneprobe.api.IProbeInfo;
import native.mcjty.theoneprobe.api.IProbeHitData;
import native.mcjty.theoneprobe.api.ProbeMode;

/*
Iron Tanks' tank tiles (TankTile/VoidTankTile/CreativeTankTile) all extend BuildCraft's
TileTank, which exposes its fluid via a public `tank` field (buildcraft.lib.fluid.Tank,
itself a net.minecraftforge.fluids.FluidTank) - no need for any Shadow/getter mixin.
Implement TheOneProbe's IProbeInfoAccessor on the shared TankBlock base so TheOneSmeagle's
built-in BlockProbeInfoProvider picks it up automatically for every tank tier/variant.
fluidLabel() alone is text-only (no icon, confirmed by decompiling ElementFluidLabel) - pair
it with a filled-bucket ItemStack via FluidUtil.getFilledBucket() rendered through item(),
reusing the same item-icon rendering already proven for Rustic's Apiary, instead of fighting
TOP's static-PNG-only icon() API against the dynamic fluid texture atlas.
*/
#mixin {targets: "com.indemnity83.irontanks.common.blocks.TankBlock"}
zenClass MixinTankBlock extends IProbeInfoAccessor {

    function addProbeInfo(mode as ProbeMode, info as IProbeInfo, player as EntityPlayer, world as World, state as IBlockState, data as IProbeHitData) as void {
        val tile = world.getTileEntity(data.getPos()) as TankTile;
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
