%{
open AST
%}

%token <float> NOMBRE
%token <string> IDENT

%token PLUS MOINS GPAREN DPAREN EOL VIRG
%token FOIS DIV
%token EQUAL EGAL
%token INTEROGATION DEUXPOINTS

%left PLUS MOINS
%left FOIS DIV
%left EQUAL EGAL
%left INTEROGATION DEUXPOINTS
%nonassoc UMOINS /* - */
%nonassoc UPLUS /* + */

%type <AST.programme_a>  programme
%type <AST.expression_a> expression
%type <AST.commande_a> commande
%type <AST.main_a> main

%start main

%%

main:
   |programme             {Prg ($1)}
;
expression:
 NOMBRE                           { Nombre $1 }
 |IDENT                           { Ident $1 }
 |expression PLUS expression      { Plus ($1,$3) }
 | expression MOINS expression    { Moins($1,$3) }
 | expression FOIS expression     { Mult ($1,$3) }
 | expression DIV expression      { Div  ($1,$3) }
 | GPAREN expression DPAREN       { $2 }
 |expression EGAL expression      {Egal ($1,$3)}
 |expression INTEROGATION expression DEUXPOINTS expression {  Else ($5,Then($1,$3))}
;
commande :

 |expression VIRG        {Virg ($1)}	  	
 |IDENT EQUAL expression VIRG {Equadent ($3)}
;
programme :
  commande 		{Commandea ($1)}
 |commande programme 	{Instruct ($1,$2)}
;
