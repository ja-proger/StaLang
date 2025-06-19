

private func current(_ str: String) -> String {
    return String(str[str.startIndex])
}


/// Lex function
public func lex(source: String) -> [TokenInner]{
    var src: String = source
    var tokens: [TokenInner] = []
    
    var pos: Int = 0
    var line: Int = 1
    
    while !src.isEmpty {
        if current(src) == " "{
            src.removeFirst()
            pos += 1
        }
        if current(src) == "\t"{
            src.removeFirst()
            pos += 4
        }
        if current(src) == "\n" {
            src.removeFirst()
            pos = 0
            line += 1
        }
        else {
            src.removeFirst()
        }
    }
    print("lines: \(line)")
    return tokens
}


