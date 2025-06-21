
extension String {
    subscript(i: Int) -> String {
        guard i >= 0 && i < self.count else { return "" }
        let index = self.index(self.startIndex, offsetBy: i)
        return String(self[index])
    }
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
        if src[0] == " " {
            pos += 1
            src.removeFirst()
        }
        else if src[0] == "\t"{
            pos += 4
            src.removeFirst()
        }
        else if src[0] == "\n" {
            pos = 0
            line += 1
            src.removeFirst()
        }
        else if isAlpha(src[0]) {
            var word: String = ""
            while isAlpha(src[0]) && !src.isEmpty{
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
                print("\u{001B}[1;31mERROR [LEX-0]\u{001B}[0m:\n(1) DESCRIPTION: Unknown word found in the source \u{001B}[1;93m'\(word)'\u{001B}[0m\n(2) LOCATION: {line: \(line), start position: \(pos), end position: \(pos+word.count-1)}")
                
                break
            }
        }
        else if isNum(src[0]){
            pos += 1
            src.removeFirst()
        }
        else if isSep(src[0]){
            pos += 1
            src.removeFirst()
        }
        else if isOper(src[0]){
            var oper: String = ""
            while isOper(src[0]) && !src.isEmpty{
                oper += String(src.removeFirst())
            }
            if oper == "//"{
                while src[0] != "\n" && !src.isEmpty {
                    pos += 1
                    src.removeFirst()
                }
            } else {
                print("\u{001B}[1;31mERROR [LEX-1]\u{001B}[0m:\n(1) DESCRIPTION: Unknown operator found in the source \u{001B}[1;93m'\(oper)'\u{001B}[0m\n(2) LOCATION: {line: \(line), start position: \(pos), end position: \(pos+oper.count-1)}")
            }
        }
        else {
            pos += 1
            src.removeFirst()
        }
    }
    print("lines: \(line)")
    return tokens
}


