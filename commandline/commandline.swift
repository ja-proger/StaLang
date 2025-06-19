

public struct Command {
    var commandId: Int
    /// Quantity of the arguments, that command takes
    var argsQ: Int
    var name: String
    var sign: String
    var docs: String
}

public func runCommandHelp(){
    for com in COMMANDS {
        print("(\(com.commandId)). \(com.name)\t'\(com.sign)'\t\(com.docs)\n")
    }
}

public func runCommandDev(){
    
}


public let COMMANDS: [Command] = [
    Command(commandId: 0, argsQ: 0, name: "Help", sign: "-help", docs: "Known all available commands"),
    Command(commandId: 1, argsQ: 1, name: "Explain", sign: "-explain [id]", docs: "Exmplain error or show documentation"),
    Command(commandId: 2, argsQ: 0, name: "Repl", sign: "-repl", docs: "Command line mode of the stal. Iterpretation mode"),
    Command(commandId: 3, argsQ: 0, name: "Dev", sign: "-dev", docs: "Development mode"),
    Command(commandId: 4, argsQ: 1, name: "Compile", sign: "-compile", docs: "Compile the source code")
]
