

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
        print("(\(com.commandId)). \u{001B}[1;32m\(com.name)\u{001B}[0m\t\u{001B}[1;92m'\(com.sign)'\u{001B}[0m\n\t\(com.docs)")
    }
}

public func runCommandAbout(){
    print("StaLang or Stal is a DSL programming language which supports meta, functional and object-orientated programming paradigms. It can be used for data anlysis, creating forecasts especially in economics, math, programming, and even for AI.\nIt was created in 2025 by person, who hides his identity by JA Proger nickname. You can find the project here \u{001B}[4;96mhttps://github.com/ja-proger/StaLang.git\u{001B}[0m")
}


public let COMMANDS: [Command] = [
    Command(commandId: 0, argsQ: 0, name: "Help", sign: "-help", docs: "Known all available commands"),
    Command(commandId: 1, argsQ: 1, name: "Explain", sign: "-explain [id]", docs: "Exmplain error or show documentation"),
    Command(commandId: 2, argsQ: 0, name: "Repl", sign: "-repl", docs: "Command line mode of the stal. Iterpretation mode"),
    Command(commandId: 3, argsQ: 0, name: "Dev", sign: "-dev", docs: "Development mode"),
    Command(commandId: 4, argsQ: 1, name: "Compile", sign: "-compile", docs: "Compile the source code"),
    Command(commandId: 5, argsQ: 0, name: "About StaLang", sign: "-about", docs: "Run to know history of the language")
]
