
%{
open AST
%}

%token <int> NOMBRE
%token <float> FLOTTANT
%token <string> IDENT
%token <bool> BOOL
%token PLUS MOINS FOIS DIV MODULO GPAREN DPAREN NOT AND OR EGAL INFEGAL VIRG  INTEROGATION DEUXPOINTS EQUAL EOL

%left PLUS MOINS
%left FOIS DIV
%nonassoc UMOINS


%type <AST.expression_a> main expression terme facteur

%start main

%%

main:
   expression EOL            { $1 }
 ;
expression:
   expression PLUS expression     { Plus ($1,$3) }
 | expression MOINS expression    { Moins($1,$3) }
 | expression FOIS expression     { Mult ($1,$3) }
 | expression DIV expression      { Div  ($1,$3) }
 | GPAREN expression DPAREN       { $2 }
 | MOINS expression %prec UMOINS  { Neg $2 }
 | expression OR expression       { Or  ($1,$3) }
 | expression AND expression      { And  ($1,$3) }
 | expression EGAL expression     { Egal  ($1,$3) }
 | expression INFEGAL expression   { Infegal  ($1,$3) }
 | NOT expression                 { Not $2 }
 | NOMBRE                         { Num $1 }
 | FLOTTANT                       { Flot $1 }
 | IDENT                          { Ident $1 }
 | BOOL                           { Bool $1 }
 | expression PLUS terme     { Plus ($1,$3) }
 | expression MOINS terme    { Moins($1,$3) }
 | VIRG expression            {Virg $2 }
 | terme                     { $1 }
 |expression EGAL expression      {Egal ($1,$3)}
 |expression EQUAL expression     {Equal ($1,$3)}
 /* |expression INTEROGATION expression
 DEUXPOINTS expression {  Else ($5,Then($1,$3))} */

 ;

 terme:
    terme FOIS facteur        { Mult ($1,$3) }
  | terme DIV facteur         { Div  ($1,$3) }
  | terme MODULO facteur      { Mod  ($1,$3) }
  | facteur                   { $1 }
  ;
 facteur:
    GPAREN expression DPAREN  { $2 }
  | MOINS facteur             { Neg $2 }
  | NOMBRE                    { Num $1 }
  | FLOTTANT                  { Flot $1 }
  | BOOL                      { Bool $1 }

  ;
  /* programme :
    commande 		{Commandea ($1)}
   |commande programme 	{Instruct ($1,$2)}
  ; */
