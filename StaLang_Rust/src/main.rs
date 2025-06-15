// main.rs

#[path = "lexer/lexer.rs"]
mod lexer;
#[path = "ast/ast.rs"]
mod ast;
#[path = "parser/parser.rs"]
mod parser;
#[path = "commands/comline.rs"]
mod comline;

fn main(){
    let source: &str = "out 0;";
    lexer::lex(source);
    println!("success");
}

