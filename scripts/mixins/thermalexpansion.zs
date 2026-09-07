#modloaded thermalexpansion
#loader mixin

import native.net.minecraft.item.ItemStack;

#mixin {targets: "cofh.thermalexpansion.plugins.jei.machine.transposer.TransposerRecipeWrapperContainer"}
zenClass MixinTransposerRecipeWrapperContainer {
    #mixin Redirect
    #{
    #    method: "<init>",
    #    at: {
    #        value: "INVOKE",
    #        target: "Lnet/minecraftforge/fluids/FluidRegistry;getRegisteredFluids()Ljava/util/Map;"
    #    }
    #}
    function removeFluidBucketRecipeEntries() as any[any] {
        return {};
    }
}

