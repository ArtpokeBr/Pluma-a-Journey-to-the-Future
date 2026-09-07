#modloaded gregtech alfheim
#loader mixin

import native.java.lang.Class;
import native.java.lang.Object;

/*
GregTech's DummyWorld (the fake World used by TrackedDummyWorld to render the JEI
"Multiblock Info" preview) reflectively nulls out World's alfheim$lightingEngine field
when Alfheim is loaded, apparently assuming that's a safe way to disable lighting on the
dummy world. But Alfheim's own WorldMixin constructor already initializes that field to
a fresh empty AtomicReference<>() for every World instance (decompiled: field_alfheim$lightingEngine
= new AtomicReference<>() runs as part of the mixin's constructor merge, before DummyWorld's
own constructor body runs) - GregTech's reflective set REPLACES that valid container with a
raw null. Alfheim's generated getAlfheim$lightingEngine() getter unconditionally unwraps the
field with AtomicReference.get() though, with no null-check on the container itself, so the
raw null throws an NPE the instant GregTech places a block into the dummy world (Chunk's
onConstructed mixin calls the getter while constructing the chunk). That NPE escapes
JustEnoughItemsModule.register(), and JEI drops GregTech's entire plugin in response - no GT
JEI tabs/categories at all, not just the multiblock preview.

Skip the field-nulling call entirely (ordinal 1 - the first setPrivateValue call in the
constructor is unrelated, for lightUpdateBlockList) so Alfheim's own already-valid empty
AtomicReference container is left in place. AtomicReference isn't usable as a ZenScript
native type (parser rejects it as "not natively accessible"), so this has to be a no-op
rather than writing a replacement container.
*/
#mixin {targets: "gregtech.api.util.world.DummyWorld"}
zenClass MixinDummyWorld {
    #mixin Static
    #mixin Redirect
    #{
    #    method: "<init>",
    #    at: {
    #        value: "INVOKE",
    #        target: "Lnet/minecraftforge/fml/common/ObfuscationReflectionHelper;setPrivateValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V",
    #        ordinal: 1
    #    }
    #}
    function skipAlfheimLightingEngineNull(classToAccess as Class, instance as Object, value as Object, fieldName as string) as void {
        // NO-OP - leave Alfheim's own lazily-initialized AtomicReference container intact
    }
}
