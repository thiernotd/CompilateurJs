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

open Parsing;;
let _ = parse_error;;
# 3 "parseur.mly"
open AST
# 80 "parseur.ml"
let yytransl_const = [|
  262 (* AddiRe *);
  263 (* SubsRe *);
  264 (* MultRe *);
  265 (* DiviRe *);
  266 (* NegaRe *);
  267 (* Modulo *);
  268 (* Not *);
  269 (* BoToRe *);
  270 (* ReToBo *);
  271 (* Equal *);
  272 (* NotEq *);
  273 (* LowEqR *);
  274 (* GreEqR *);
  275 (* LowStR *);
  276 (* GreStR *);
  277 (* IsTrue *);
  278 (* Jump *);
  279 (* ConJmp *);
  280 (* Case *);
  281 (* CstRe *);
  282 (* CstBo *);
  283 (* Copy *);
  284 (* Swap *);
  285 (* Drop *);
  286 (* Noop *);
  287 (* TypeOf *);
  288 (* Halt *);
  289 (* Error *);
  290 (* Assert *);
  291 (* Print *);
  292 (* SetVar *);
  293 (* SetVD *);
  294 (* GetVar *);
  295 (* SetArg *);
  296 (* StCall *);
  297 (* Call *);
  298 (* Return *);
  299 (* DclVar *);
  300 (* Lambda *);
  301 (* DclArg *);
  302 (* Throw *);
  303 (* Continue *);
  304 (* Concat *);
  305 (* CstStr *);
  306 (* LowEqS *);
  307 (* GreEqS *);
  308 (* LowStS *);
  309 (* GreStS *);
  310 (* StToRe *);
  311 (* ReToSt *);
  312 (* IsEmpt *);
  313 (* SetVS *);
  314 (* GetVS *);
  315 (* Point *);
  316 (* Null *);
  317 (* NewObj *);
  318 (* SetObj *);
  319 (* NotEqO *);
  320 (* CstUn *);
  321 (* Protot *);
  322 (* GetPrt *);
  323 (* TlCall *);
  324 (* RetOpt *);
  325 (* RetZer *);
  326 (* RetZOp *);
  327 (* EOL *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* NOMBRE *);
  258 (* DOUBLE *);
  259 (* BOOL *);
  260 (* VAR *);
  261 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\001\000\002\000\002\000\003\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\002\000\002\000\001\000\002\000\002\000\
\002\000\002\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\002\000\001\000\002\000\001\000\001\000\002\000\002\000\
\001\000\001\000\001\000\001\000\002\000\002\000\002\000\001\000\
\003\000\001\000\002\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\002\000\001\000\001\000\002\000\001\000\001\000\
\001\000\001\000\001\000\001\000\002\000\002\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\005\000\006\000\007\000\008\000\009\000\010\000\
\011\000\012\000\013\000\014\000\015\000\016\000\017\000\018\000\
\019\000\000\000\000\000\000\000\000\000\000\000\028\000\029\000\
\030\000\031\000\032\000\033\000\000\000\000\000\038\000\000\000\
\000\000\000\000\041\000\042\000\043\000\044\000\000\000\000\000\
\000\000\048\000\000\000\050\000\000\000\052\000\053\000\054\000\
\055\000\056\000\057\000\058\000\000\000\000\000\000\000\060\000\
\061\000\000\000\027\000\063\000\064\000\065\000\066\000\067\000\
\068\000\000\000\001\000\072\000\000\000\020\000\021\000\023\000\
\024\000\025\000\026\000\034\000\036\000\039\000\069\000\040\000\
\045\000\046\000\047\000\000\000\051\000\070\000\071\000\059\000\
\062\000\002\000\000\000\003\000\049\000\004\000"

let yydgoto = "\002\000\
\068\000\069\000"

let yysindex = "\007\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\008\255\009\255\010\255\005\255\011\255\000\000\000\000\
\000\000\000\000\000\000\000\000\007\255\012\255\000\000\014\255\
\015\255\016\255\000\000\000\000\000\000\000\000\017\255\021\255\
\019\255\000\000\023\255\000\000\022\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\025\255\027\255\026\255\000\000\
\000\000\028\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\001\000\000\000\000\000\002\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\013\255\000\000\000\000\000\000\000\000\
\000\000\000\000\001\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\003\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\004\000\005\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\190\255\000\000"

let yytablesize = 332
let yytable = "\090\000\
\067\000\092\000\022\000\035\000\037\000\073\000\074\000\001\000\
\070\000\071\000\072\000\076\000\000\000\075\000\000\000\093\000\
\077\000\078\000\079\000\080\000\081\000\082\000\083\000\084\000\
\094\000\086\000\085\000\087\000\000\000\088\000\000\000\089\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\003\000\004\000\
\005\000\006\000\007\000\008\000\009\000\010\000\011\000\012\000\
\013\000\014\000\015\000\016\000\017\000\000\000\018\000\019\000\
\020\000\021\000\022\000\023\000\024\000\025\000\026\000\027\000\
\028\000\029\000\030\000\031\000\032\000\033\000\034\000\035\000\
\036\000\037\000\038\000\039\000\040\000\041\000\042\000\043\000\
\044\000\045\000\046\000\047\000\048\000\049\000\050\000\051\000\
\052\000\053\000\054\000\055\000\056\000\057\000\058\000\000\000\
\059\000\060\000\061\000\062\000\063\000\064\000\065\000\066\000\
\091\000\022\000\035\000\037\000"

let yycheck = "\066\000\
\000\000\000\000\000\000\000\000\000\000\001\001\002\001\001\000\
\001\001\001\001\001\001\005\001\255\255\003\001\255\255\003\001\
\005\001\004\001\004\001\004\001\004\001\001\001\004\001\001\001\
\091\000\001\001\005\001\001\001\255\255\004\001\255\255\004\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\019\001\020\001\255\255\022\001\023\001\
\024\001\025\001\026\001\027\001\028\001\029\001\030\001\031\001\
\032\001\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\040\001\041\001\042\001\043\001\044\001\045\001\046\001\047\001\
\048\001\049\001\050\001\051\001\052\001\053\001\054\001\055\001\
\056\001\057\001\058\001\059\001\060\001\061\001\062\001\255\255\
\064\001\065\001\066\001\067\001\068\001\069\001\070\001\071\001\
\071\001\071\001\071\001\071\001"

let yynames_const = "\
  AddiRe\000\
  SubsRe\000\
  MultRe\000\
  DiviRe\000\
  NegaRe\000\
  Modulo\000\
  Not\000\
  BoToRe\000\
  ReToBo\000\
  Equal\000\
  NotEq\000\
  LowEqR\000\
  GreEqR\000\
  LowStR\000\
  GreStR\000\
  IsTrue\000\
  Jump\000\
  ConJmp\000\
  Case\000\
  CstRe\000\
  CstBo\000\
  Copy\000\
  Swap\000\
  Drop\000\
  Noop\000\
  TypeOf\000\
  Halt\000\
  Error\000\
  Assert\000\
  Print\000\
  SetVar\000\
  SetVD\000\
  GetVar\000\
  SetArg\000\
  StCall\000\
  Call\000\
  Return\000\
  DclVar\000\
  Lambda\000\
  DclArg\000\
  Throw\000\
  Continue\000\
  Concat\000\
  CstStr\000\
  LowEqS\000\
  GreEqS\000\
  LowStS\000\
  GreStS\000\
  StToRe\000\
  ReToSt\000\
  IsEmpt\000\
  SetVS\000\
  GetVS\000\
  Point\000\
  Null\000\
  NewObj\000\
  SetObj\000\
  NotEqO\000\
  CstUn\000\
  Protot\000\
  GetPrt\000\
  TlCall\000\
  RetOpt\000\
  RetZer\000\
  RetZOp\000\
  EOL\000\
  EOF\000\
  "

let yynames_block = "\
  NOMBRE\000\
  DOUBLE\000\
  BOOL\000\
  VAR\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 29 "parseur.mly"
            ([] )
# 402 "parseur.ml"
               : AST.instruction_a list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : AST.instruction_a list) in
    Obj.repr(
# 30 "parseur.mly"
                 (_2 )
# 409 "parseur.ml"
               : AST.instruction_a list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : AST.instruction_a ) in
    Obj.repr(
# 31 "parseur.mly"
                       ([_1] )
# 416 "parseur.ml"
               : AST.instruction_a list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.instruction_a ) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.instruction_a list) in
    Obj.repr(
# 32 "parseur.mly"
                       (_1::_3 )
# 424 "parseur.ml"
               : AST.instruction_a list))
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "parseur.mly"
                             ( AddiRe )
# 430 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parseur.mly"
                             ( SubsRe )
# 436 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "parseur.mly"
                             ( MultRe )
# 442 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parseur.mly"
                             ( DiviRe )
# 448 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "parseur.mly"
                             ( NegaRe )
# 454 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 41 "parseur.mly"
                             ( Modulo )
# 460 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "parseur.mly"
                             ( Not )
# 466 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "parseur.mly"
                             ( BoToRe )
# 472 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "parseur.mly"
                             ( ReToBo )
# 478 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "parseur.mly"
                             ( Equal  )
# 484 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 46 "parseur.mly"
                             ( NotEq )
# 490 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 47 "parseur.mly"
                             ( LowEqR )
# 496 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 48 "parseur.mly"
                             ( GreEqR )
# 502 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 49 "parseur.mly"
                             ( LowStR )
# 508 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parseur.mly"
                             ( GreStR )
# 514 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 51 "parseur.mly"
                             ( Jump(_2) )
# 521 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 52 "parseur.mly"
                             ( ConJmp(_2) )
# 528 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 53 "parseur.mly"
                             ( Case(1) )
# 534 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 54 "parseur.mly"
                             ( Case(_2) )
# 541 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 55 "parseur.mly"
                             ( CstRe(float_of_int(_2)) )
# 548 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 56 "parseur.mly"
                             ( CstRe(_2) )
# 555 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 57 "parseur.mly"
                             ( CstBo(_2) )
# 562 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parseur.mly"
                             ( CstUn )
# 568 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parseur.mly"
                             ( Copy )
# 574 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parseur.mly"
                             ( Swap )
# 580 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parseur.mly"
                              (Drop )
# 586 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parseur.mly"
                             ( Noop )
# 592 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parseur.mly"
                             ( TypeOf )
# 598 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parseur.mly"
                             ( Halt )
# 604 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 65 "parseur.mly"
                             ( Error(_2) )
# 611 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parseur.mly"
                             ( Error("") )
# 617 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 67 "parseur.mly"
                             ( Assert(_2) )
# 624 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 68 "parseur.mly"
                             ( Assert("") )
# 630 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parseur.mly"
                             ( Print )
# 636 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 70 "parseur.mly"
                             ( SetVar(_2) )
# 643 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 71 "parseur.mly"
                             ( GetVar(_2) )
# 650 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 72 "parseur.mly"
                             ( SetArg )
# 656 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 73 "parseur.mly"
                             ( StCall )
# 662 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 74 "parseur.mly"
                             ( Call )
# 668 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 75 "parseur.mly"
                             ( Return )
# 674 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 76 "parseur.mly"
                             ( DclVar(_2) )
# 681 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 77 "parseur.mly"
                             ( Lambda(_2) )
# 688 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 78 "parseur.mly"
                             ( DclArg(_2) )
# 695 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 79 "parseur.mly"
                             ( Throw )
# 701 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : int) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 80 "parseur.mly"
                             ( Continue(_2,_3) )
# 709 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "parseur.mly"
                             ( Concat )
# 715 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 82 "parseur.mly"
                             ( CstStr(_2))
# 722 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "parseur.mly"
                             ( LowEqS )
# 728 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 84 "parseur.mly"
                             ( GreEqS )
# 734 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 85 "parseur.mly"
                             ( LowStS )
# 740 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 86 "parseur.mly"
                             ( GreStS )
# 746 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "parseur.mly"
                             ( StToRe )
# 752 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 88 "parseur.mly"
                             ( ReToSt )
# 758 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 89 "parseur.mly"
                             ( IsEmpt )
# 764 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 90 "parseur.mly"
                             ( Point(_2) )
# 771 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "parseur.mly"
                             ( Null )
# 777 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 92 "parseur.mly"
                             ( NewObj )
# 783 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 93 "parseur.mly"
                             ( SetObj(_2) )
# 790 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 94 "parseur.mly"
                             ( Protot )
# 796 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 95 "parseur.mly"
                             ( GetPrt )
# 802 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 96 "parseur.mly"
                             ( TlCall )
# 808 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 97 "parseur.mly"
                             ( RetOpt )
# 814 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 98 "parseur.mly"
                             ( RetZer )
# 820 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "parseur.mly"
                             ( RetZOp )
# 826 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 100 "parseur.mly"
                             ( SetVD(_2) )
# 833 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 101 "parseur.mly"
                             ( SetVS(_2) )
# 840 "parseur.ml"
               : AST.instruction_a ))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 102 "parseur.mly"
                             ( GetVS(_2) )
# 847 "parseur.ml"
               : AST.instruction_a ))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : AST.instruction_a list)
