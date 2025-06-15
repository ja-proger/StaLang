
#[path = "../ast/tokens.rs"]
mod tokens;
fn lex(src: &str) -> Vec<tokens::TokenOperational> {
    let mut tokens: Vec<tokens::TokenOperational> = vec![];
    for (index, char) in src.chars().enumerate(){
        println!("{index}: {char}");
    }
    return tokens;
}