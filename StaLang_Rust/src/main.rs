// main.rs

#[path = "lexer/lexer.rs"]
mod lexer;
#[path = "ast/ast.rs"]
mod ast;
#[path = "parser/parser.rs"]
mod parser;
#[path = "commands/comline.ts"]
mod comline;

fn main(){
    println!("compiler");
}

