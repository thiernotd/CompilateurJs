
type expression_a =
    | Plus  of expression_a * expression_a
    | Moins of expression_a * expression_a
    | Mult  of expression_a * expression_a
    | Div   of expression_a * expression_a
    | Mod   of expression_a * expression_a
    | Or    of expression_a * expression_a
    | And   of expression_a * expression_a
    | Egal  of expression_a * expression_a
    | Infegal of expression_a * expression_a
    | Affect of expression_a * expression_a
    | Not   of expression_a
    | Neg   of expression_a
    | Num   of float
    | Bool  of bool
    | Ident of string

;;
let rec print_binaire form s g d = Format.fprintf form "@[<2>%s@ %a%s@ %a%s@ %s@]"  "(" print_AST g " ," print_AST d " )" s

    and print_AST form = let open Format in function
        | Plus  (g,d) -> print_binaire form "Plus" g d
        | Moins (g,d) -> print_binaire form "Moins" g d
        | Mult  (g,d) -> print_binaire form "Mult" g d
        | Div   (g,d) -> print_binaire form "Div" g d
        | Mod   (g,d) -> print_binaire form "Mod" g d
        | Or   (g,d) -> print_binaire form "Or" g d
        | And   (g,d) -> print_binaire form "And" g d
        | Egal   (g,d) -> print_binaire form "Egal" g d
        | Affect (g,d) -> print_binaire form "Affect" g d
        | Infegal   (g,d) -> print_binaire form "Infegal" g d
        | Not    b ->   fprintf form "@[<2>%a@ %s@]"  print_AST b "Not"
        | Neg    e    -> fprintf form "@[<2>%a@ %s@]"  print_AST e "Neg"
        | Num    n    -> fprintf form "@[<2>%f@ %s@]"  n "Num"
        | Bool   b    -> fprintf form "@[<2>%B@ %s@]" b "Bool"
        | Ident  x    -> fprintf form "@[<2>%S@ %s@]" x "Ident"
;;
