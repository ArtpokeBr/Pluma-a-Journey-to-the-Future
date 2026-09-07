#modloaded extrautils2
#loader mixin

import native.java.lang.StringBuilder;
import native.com.rwtema.extrautils2.network.XUPacketBuffer;
import native.com.rwtema.extrautils2.utils.helpers.StringHelper;
import native.com.rwtema.extrautils2.api.machine.Machine;
import native.com.rwtema.extrautils2.api.machine.MachineRegistry;
import native.com.rwtema.extrautils2.api.machine.XUMachineCrusher;

/*
Remove Crusher since its whole functionality copied with other crusher
*/
#mixin {targets: "com.rwtema.extrautils2.machine.MachineInit"}
zenClass MixinMachineInit {
    #mixin Static
    #mixin Redirect
    #{
    #    method: "init",
    #    at: {
    #        value: "INVOKE",
    #        target: "Lcom/rwtema/extrautils2/api/machine/MachineRegistry;register(Lcom/rwtema/extrautils2/api/machine/Machine;)Lcom/rwtema/extrautils2/api/machine/Machine;"
    #    }
    #}
    function disableCrusher(machine as Machine) as Machine {
        if (machine != XUMachineCrusher.INSTANCE) {
            MachineRegistry.register(machine);
        }
        return machine;
    }
}



