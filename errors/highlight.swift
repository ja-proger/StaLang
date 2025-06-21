
extension String {
    func indexOf(_ ch: String, _ oc: Int) -> Int? {
        guard oc > 0 else { return nil }
        var count = 0
        for (i, char) in self.enumerated() {
            if String(char) == ch {
                count += 1
                if count == oc {
                    return i
                }
            }
        }
        return nil
    }
}

public func highlight(_ src: String, _ token: TokenInner) -> String {
    var errorStr: String = ""
    var index = src.indexOf("\n", token.line)
    return errorStr
}

/*
 line: 2
 */
