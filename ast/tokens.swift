
public enum TokenKind {
    case KEYWORD
    case NUMBER
    case STRING
    case SEP
    case OPER
}

public struct TokenDocs {
    var tokenId: Int
    var kind: TokenKind
    var name: String
    var sign: String
    var docs: String
}


/// Token type for opererational goals
public struct TokenInner {
    var tokenId: Int
    var kind: TokenKind
    var sign: String
    var posS: Int
    var posF: Int
    var line: Int
}
