#modloaded embers
#loader mixin

import native.java.util.Spliterator;
import native.java.util.stream.Stream;
import native.java.util.stream.StreamSupport;

/*
IngredientSpecial.cacheMatchingStacks() scans every registered item via a *parallel*
stream (StreamSupport.stream(spliterator, true)), which calls into other mods'
ingredient-matching code (e.g. NuclearCraft's OreDictHelper.getOreNames, which mutates
an unsynchronized static Int2ObjectOpenHashMap cache) from multiple ForkJoinPool
threads at once. That race sometimes throws a caught ArrayIndexOutOfBoundsException
(logged as "Found a broken recipe" and skipped) and sometimes corrupts the hashmap into
an infinite loop instead, silently freezing the Client thread during JEI's
"Building recipe registry..." step with no crash report. Force the stream sequential to
remove the race - this only runs once at boot, so the perf cost is negligible.
*/
#mixin {targets: "teamroots.embers.util.IngredientSpecial"}
zenClass MixinIngredientSpecial {
    #mixin Static
    #mixin Redirect
    #{
    #    method: "cacheMatchingStacks",
    #    at: {
    #        value: "INVOKE",
    #        target: "Ljava/util/stream/StreamSupport;stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;"
    #    }
    #}
    function sequentialItemStream(spliterator as Spliterator, parallel as bool) as Stream {
        return StreamSupport.stream(spliterator, false);
    }
}
