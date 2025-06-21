

private func current(_ str: String) -> String {
    return String(str[str.startIndex])
}

private func isAlpha(_ c: String) -> Bool {
    let alpha: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    if alpha.contains(c) { return true } else { return false }
}

/// Boolean function that returns wheather the char is corresponds with the target string
///
private func isSep(_ c: String) -> Bool {
    let seps: String = ",.:;"
    if seps.contains(c) { return true } else { return false }
}

private func isNum(_ c: String) -> Bool {
    let nums: String = "0123456789"
    if nums.contains(c) { return true } else { return false }
}

private func isOper(_ c: String) -> Bool {
    let opers: String = "+-=/\\[]{}()*&%$#@\"'?!><~"
    if opers.contains(c) { return true } else { return false }
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
        if isAlpha(current(src)) {
            var word: String = ""
            while isAlpha(current(src)){
                word += String(src.removeFirst())
            }
            if word == "out" {
                tokens.append(TokenInner(
                    tokenId: 0,
                    kind: .KEYWORD,
                    sign: word,
                    posS: pos,
                    posF: pos+word.count-1,
                    line: line
                ))
            }
            else {
                print("\u{001B}[1;31mERROR [LEX-0]\u{001B}[0m:\nUnknown word found in the source \u{001B}[1;93m'\(word)'\u{001B}[0m")
                
                break
            }
        }
        else if isNum(current(src)){
            src.removeFirst()

        }
        else if isSep(current(src)){
            src.removeFirst()

        }
        else if isOper(current(src)){
            src.removeFirst()

        }
        else {
            src.removeFirst()
        }
    }
    print("lines: \(line)")
    return tokens
}


