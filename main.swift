

// Dev: Run
func run(src: String) -> [TokenInner]{
    var tokens: [TokenInner] = lex(source: src)
    return tokens
}

var src = "out 0;"
var tokens = run(src: src)
print(tokens)
