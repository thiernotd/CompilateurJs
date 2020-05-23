
{
  open Parseur
  exception Eof
  exception TokenInconu
}
rule token = parse
            [' ' '\t']           { token lexbuf }
          | ['\n' ]              { EOL }
	        | ['0'-'9']*'.'['0'-'9']* as lexem { NOMBRE (float_of_string lexem) }
          | ['a'-'z'] ['a'-'z'',' 'A'-'Z'',' '0'-'9'',' '-' ',' '_'] as lxm {IDENT lxm}
          | '+'                  { PLUS }
          | '-'                  { MOINS }
          | '*'                  { FOIS }
          | '/'                  { DIV }
          | '('                  { GPAREN }
          | ')'                  { DPAREN }
          | ";"                  { VIRG }
          |"="                   { EQUAL }
          |"?"                   { INTEROGATION }
          |":"			 { DEUXPOINTS }
          | "==="       	 { EGAL }
          | eof                  { raise Eof }
	  | _                    { raise TokenInconu }
