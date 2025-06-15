
enum TokenKind {
  KEYWORD,
  OPERATOR,
  SEPARATOR
}

struct TokenDocs {
  token_id: i8,
  kind: TokenKind,
  name: String,
  sign: String
}

pub struct TokenOperational {
  sign: String,
  pos_s: i8,
  pos_f: i8,
  line: i8
}

