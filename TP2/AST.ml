
type expression_a =
    | Plus  of expression_a * expression_a
    | Moins of expression_a * expression_a
    | Mult  of expression_a * expression_a
    | Div   of expression_a * expression_a
    | Mod   of expression_a * expression_a
    | Or    of expression_a * expression_a
    | And   of expression_a * expression_a
    | Egal  of expression_a * expression_a
    | Equal of expression_a * expression_a
    | Infegal of expression_a * expression_a
    | Not   of expression_a
    | Neg   of expression_a
    | Num   of int
    | Flot   of float
    | Bool  of bool
    | Ident of string
    | Virg of expression_a

;;
(*
let rec print_binaire form s g d = Format.fprintf form "@[<2>%s%s@ %a%s@ %a%s@]" s "(" print_AST g " ," print_AST d " )"

and print_AST form = let open Format in function
    | Plus  (g,d) -> print_binaire form "Plus" g d
    | Moins (g,d) -> print_binaire form "Moins" g d
    | Mult  (g,d) -> print_binaire form "Mult" g d
    | Div   (g,d) -> print_binaire form "Div" g d
    | Mod   (g,d) -> print_binaire form "Mod" g d
    | Or   (g,d) -> print_binaire form "Or" g d
    | And   (g,d) -> print_binaire form "And" g d
    | Egal   (g,d) -> print_binaire form "Egal" g d
    | Infegal   (g,d) -> print_binaire form "Infegal" g d
    | Not    b ->   fprintf form "@[<2>%s@ %a@]" "Not" print_AST b
    | Neg    e    -> fprintf form "@[<2>%s@ %a@]" "Neg" print_AST e
    | Num    n    -> fprintf form "@[<2>%s@ %i@]" "Num" n
    | Flot   m    -> fprintf form "@[<2>%s@ %f@]" "Flot" m
    | Bool   b    -> fprintf form "@[<2>%s@ %B@]" "Bool" b


;; *)
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
    | Equal  (g,d) -> print_binaire form "Equal" g d
    | Infegal   (g,d) -> print_binaire form "Infegal" g d
    | Not    b ->   fprintf form "@[<2>%a@ %s@]"  print_AST b "Not"
    | Neg    e    -> fprintf form "@[<2>%a@ %s@]"  print_AST e "Neg"
    | Virg   v   -> fprintf form "@[<2>%a@ %s@]"  print_AST v "Virg"
    | Num    n    -> fprintf form "@[<2>%i@ %s@]"  n "Num"
    | Flot   m    -> fprintf form "@[<2>%f@ %s@]" m "Flot"
    | Bool   b    -> fprintf form "@[<2>%B@ %s@]" b "Bool"
    | Ident  x    -> fprintf form "@[<2>%S@ %s@]" x "Ident"
    (* | Then  (g,d) -> print_binaire form  "Then" g d
    | Else  (g,d) -> print_binaire form  "Else" g d *)



(* and
    programme_a =
        |Commandea of commande_a
        |Instruct of commande_a * programme_a

    and
    commande_a =
        |Virg of expression_a
        |Equadent of expression_a
    and main_a =
        |Prg of programme_a



    and
     print_commande form s g = Format.fprintf form "@[<2>%s%s@ %a%s@]" s "(" print_AST_commande g ")"
    and print_AST_commande form = let open Format in function
         |Virg n -> fprintf form "@[<2>%s@ %a@]" "Virg" print_AST n
         |Equadent a -> fprintf form "@[<2>%s@ %a@]" "Equadent" print_AST a




    and print_programme form s g d = Format.fprintf form "@[<2>%s%s@ %a%s@ %a%s@]" s "(" print_AST_commande g " ," print_AST_programme d " )"
    and print_AST_programme form = let open Format in function
        |Instruct (g,d) -> print_programme form "Suite_Instruction" g d
        |Commandea c -> fprintf form "@[<2>%s@ %a@]" "Commandea" print_AST_commande c


    and
     print_main form s g = Format.fprintf form "@[<2>%s%s@ %a%s@]" s "(" print_AST_programme g ")"
    and print_AST_main form = let open Format in function
        |Prg e ->  fprintf form "@[<2>%s@ %a@]" "Programme" print_AST_programme e

    ;; *)

;;
