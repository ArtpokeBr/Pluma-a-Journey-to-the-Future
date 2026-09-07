#modloaded rustic theoneprobe
#loader mixin

import native.net.minecraft.entity.player.EntityPlayer;
import native.net.minecraft.block.state.IBlockState;
import native.net.minecraft.world.World;
import native.net.minecraft.util.EnumFacing;
import native.net.minecraft.item.ItemStack;
import native.net.minecraftforge.items.IItemHandler;
import native.net.minecraftforge.items.CapabilityItemHandler;
import native.net.minecraft.tileentity.TileEntity;
import native.mcjty.theoneprobe.api.IProbeInfoAccessor;
import native.mcjty.theoneprobe.api.IProbeInfo;
import native.mcjty.theoneprobe.api.IProbeHitData;
import native.mcjty.theoneprobe.api.ProbeMode;

/*
Rustic's TileEntityApiary exposes its bee/honeycomb inventories via the standard Forge
ITEM_HANDLER_CAPABILITY (EnumFacing.DOWN = honeycombs, any other side = bees) - no need
to shadow its private fields. Implement TheOneProbe's IProbeInfoAccessor directly on
BlockApiary so TheOneSmeagle's built-in BlockProbeInfoProvider picks it up automatically
(no IMC registration needed) and shows the Apiary's contents on the probe overlay.
*/
#mixin {targets: "rustic.common.blocks.BlockApiary"}
zenClass MixinBlockApiary extends IProbeInfoAccessor {

    function addProbeInfo(mode as ProbeMode, info as IProbeInfo, player as EntityPlayer, world as World, state as IBlockState, data as IProbeHitData) as void {
        val tile = world.getTileEntity(data.getPos()) as TileEntity;
        if (tile == null) {
            return;
        }

        val bees = tile.getCapability(CapabilityItemHandler.ITEM_HANDLER_CAPABILITY, EnumFacing.UP) as IItemHandler;
        if (bees != null) {
            val beeRow = info.horizontal();
            for i in 0 .. bees.getSlots() {
                val stack = bees.getStackInSlot(i) as ItemStack;
                if (stack.getCount() > 0) {
                    beeRow.item(stack);
                }
            }
        }

        val combs = tile.getCapability(CapabilityItemHandler.ITEM_HANDLER_CAPABILITY, EnumFacing.DOWN) as IItemHandler;
        if (combs != null) {
            val combRow = info.horizontal();
            for i in 0 .. combs.getSlots() {
                val stack = combs.getStackInSlot(i) as ItemStack;
                if (stack.getCount() > 0) {
                    combRow.item(stack);
                }
            }
        }
    }
}
