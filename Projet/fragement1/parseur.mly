  %{
  open AST
  %}

  %token <float> NOMBRE
  %token <string> IDENT
  %token <bool> BOOL
  %token PLUS MOINS FOIS DIV MODULO GPAREN DPAREN AFFECT  NOT AND OR EGAL INFEGAL INTEROGATION DEUXPOINTS COMMENT EOL

  %left PLUS MOINS
  %left FOIS DIV
  %nonassoc UMOINS


  %type <AST.expression_a> main expression
  /* terme facteur */

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
   | expression MODULO expression   { Mod  ($1,$3) }
   | expression AFFECT expression    { Affect  ($1,$3) }
   | GPAREN expression DPAREN       { $2 }
   | MOINS expression %prec UMOINS  { Neg $2 }
   | expression AND expression      { And  ($1,$3) }
   | expression OR expression       { Or  ($1,$3) }
   | expression EGAL expression     { Egal  ($1,$3) }
   | expression INFEGAL expression   { Infegal  ($1,$3) }
   | NOT expression                 { Not $2 }
   | NOMBRE                         { Num $1 }
   | BOOL                           { Bool $1 }
   | IDENT                          { Ident $1 }
   
   ;

/* facteur:
      GPAREN expression DPAREN  { $2 }
    | MOINS facteur             { Neg $2 }
    | NOMBRE                    { Num $1 }
    | BOOL                      { Bool $1 }
  ;
terme :
       terme FOIS facteur        { Mult ($1,$3) }
     | terme DIV facteur         { Div  ($1,$3) }
     | terme MODULO facteur      { Mod  ($1,$3) }
     | facteur                   { $1 }
     ; */
