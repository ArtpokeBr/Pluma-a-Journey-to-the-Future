#modloaded botania
#loader mixin

import mixin.CallbackInfo;
import mixin.CallbackInfoReturnable;

// Fix crash on fighting Gaia II on server
// https://github.com/Krutoy242/Enigmatica2Expert-Extended/issues/344
#mixin {targets: "vazkii.botania.common.entity.EntityDoppleganger"}
zenClass MixinEntityDoppleganger {
    #mixin Inject
    #{
    #    method: "func_70636_d",
    #    at: {
    #       value: "INVOKE",
    #       target: "Lvazkii/botania/common/entity/EntityDoppleganger;func_70106_y()V",
    #       shift: "AFTER"
    #    },
    #    cancellable: true
    #}
    function stopUpdatingEntityWhenNoPlayerNearby(ci as CallbackInfo) as void {
        ci.cancel();
    }
}