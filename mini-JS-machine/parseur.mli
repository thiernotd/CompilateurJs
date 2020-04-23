type token =
  | NOMBRE of (int)
  | DOUBLE of (float)
  | BOOL of (bool)
  | VAR of (string)
  | STRING of (string)
  | AddiRe
  | SubsRe
  | MultRe
  | DiviRe
  | NegaRe
  | Modulo
  | Not
  | BoToRe
  | ReToBo
  | Equal
  | NotEq
  | LowEqR
  | GreEqR
  | LowStR
  | GreStR
  | IsTrue
  | Jump
  | ConJmp
  | Case
  | CstRe
  | CstBo
  | Copy
  | Swap
  | Drop
  | Noop
  | TypeOf
  | Halt
  | Error
  | Assert
  | Print
  | SetVar
  | SetVD
  | GetVar
  | SetArg
  | StCall
  | Call
  | Return
  | DclVar
  | Lambda
  | DclArg
  | Throw
  | Continue
  | Concat
  | CstStr
  | LowEqS
  | GreEqS
  | LowStS
  | GreStS
  | StToRe
  | ReToSt
  | IsEmpt
  | SetVS
  | GetVS
  | Point
  | Null
  | NewObj
  | SetObj
  | NotEqO
  | CstUn
  | Protot
  | GetPrt
  | TlCall
  | RetOpt
  | RetZer
  | RetZOp
  | EOL
  | EOF

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> AST.instruction_a list
