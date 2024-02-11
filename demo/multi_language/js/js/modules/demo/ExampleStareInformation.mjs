export function execute(params, inputs, outputs) {
    const e = params._sys.executor
    const msg = "Hello! I am " + e.executorModel().getName() + ", id " + e.getExecutorId() + " - " + e
    e.showStatus(msg)
    print(msg)
    e.defaultOutputPortName("model")
    outputs.platform = params._sys.platform
    outputs.model = e.executorModel().jsonString()
}
