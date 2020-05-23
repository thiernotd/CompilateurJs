type expression_a =
    | Plus  of expression_a * expression_a
    | Moins of expression_a * expression_a
    | Mult  of expression_a * expression_a
    | Div   of expression_a * expression_a
    | Egal  of expression_a * expression_a
    | Nombre  of float
    |Ident of string   
    |Then of expression_a * expression_a
    |Else of expression_a * expression_a
and 
programme_a =
    |Commandea of commande_a
    |Instruct of commande_a * programme_a
 
and 
commande_a = 
    |Virg of expression_a
    |Equadent of expression_a
and main_a =
    |Prg of programme_a 

;;
	
let rec print_binaire form s g d = Format.fprintf form "@[<2>%s%s@ %a%s@ %a%s@]" s "(" print_AST g " ," print_AST d " )"

and print_AST form = let open Format in function
    | Plus  (g,d) -> print_binaire form "Plus" g d
    | Moins (g,d) -> print_binaire form "Moins" g d
    | Mult  (g,d) -> print_binaire form "Mult" g d
    | Div   (g,d) -> print_binaire form "Div" g d
    | Egal   (g,d) -> print_binaire form "Egal" g d
    | Then   (g,d) -> print_binaire form "Then" g d
    | Else  (g,d) -> print_binaire form "Else" g d
    | Nombre    n    -> fprintf form "@[<2>%s@ %f@]" "Nombre" n
    | Ident  x    -> fprintf form "@[<2>%s@ %s@]" "Ident" x
    


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
   
;;



