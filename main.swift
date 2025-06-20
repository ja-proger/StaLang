import Foundation

// Dev: Run
func run(src: String) -> [TokenInner]{
    let tokens: [TokenInner] = lex(source: src)
    return tokens
}


func main() {
    // var tokens = run(src: src)
    let args = CommandLine.arguments
    print("\nStaLang Compiler\n----------------------")
    print("(1) EXECUTED COMMAND:\t'stal \(args[1])'")
    print("(2) FILE: \(args[0] == "stal" ? "Command line" : args[0])")
    print("----------------------")
    if args.count < 2 {
        print("ERROR [CL-0]: No commands entered")
    } else {
        if args[1] == "-help"{
            runCommandHelp()
        }
        else if args[1] == "-dev"{
            let file = (try? String(contentsOfFile: "./example.stal", encoding: .utf8))!
            print("\nDEV COMPILATION\n-----------------------\n")
            print("\(file)\n----------------------")
            print(run(src: file))
        }
        else if args[1] == "-about"{
            runCommandAbout()
        }
        else {
            print("ERROR [CL-1]: Unknown command")
        }
    }
}

main()


