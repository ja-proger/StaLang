
#[path = "../ast/tokens.rs"]
mod tokens;
fn lex(src: &str) -> Vec<tokens::TokenOperational> {
    let tokens: Vec<tokens::TokenOperational> = vec![];
    for (index, char) in src.chars().enumerate(){
        println!("{index}: {char}");
    }
    tokens
}