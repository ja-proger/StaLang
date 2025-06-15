
/// Command line structure
pub struct Command {
    name: String
}
/// Kind of line command
pub enum CommandKind {
    MAIN,
    SUB,
    ARG
}