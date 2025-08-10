let global_counter = 0;
// - will be global across all imports in the same context
console.log("==== Initializing JS long delay! ====");

export function longDelay(params, delay, title) {
    console.log("Global environment context path: " + params._env.contextPath +
        ", working directory: " + params._env.workingDirectory);

    global_counter += 1;
    console.log("Starting JS loop; global counter: " + global_counter);
    // All instances of this module in the same JS context will use the same counter!

    const n = delay || 10;
    let i = 0;
    for (i = 1; i <= n; i++) {
        if (params._executor.isInterrupted()) {
            console.log("Sleeping interrupted!");
            break;
        }
        let info = " (" + params._env.contextPath + ", session " + params._executor.getSessionId() + ")";
        console.log(`${title}${info}: ${i} from ${n} seconds, global counter: ${global_counter}`);
        const Thread = Java.type("java.lang.Thread");
        Thread.sleep(1000);
    }
    console.log(`Done ${title}: ${i} seconds`);
    return i;
}

longDelay