
// Dev: Run
func run(src: String) -> [TokenInner]{
    let tokens: [TokenInner] = lex(source: src)
    return tokens
}

var args = CommandLine.arguments
print(args)

var src = "out 0;"
var tokens = run(src: src)
print(tokens)
