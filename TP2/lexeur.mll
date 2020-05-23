

{
  open Parseur
  exception Eof
  exception TokenInconu
}
rule token = parse
            [' ' '\t']           { token lexbuf }
          | ['\n' ]              { EOL }
          | ['0'-'9']+  as lexem { NOMBRE(int_of_string lexem) }
	        | ['0'-'9']*'.'['0'-'9']* as lexem { FLOTTANT (float_of_string lexem) }
          | ['a'-'z'] ['a'-'z'',' 'A'-'Z'',' '0'-'9'',' '-' ',' '_'] as lexem {IDENT lexem}
          | ['T' 't']"rue"       {BOOL(true)}
          | ['F' 'f']"alse"      {BOOL(false)}
          | '+'                  { PLUS }
          | '-'                  { MOINS }
          | '*'                  { FOIS }
          | '/'                  { DIV }
	        | '%'                  { MODULO }
          | '('                  { GPAREN }
          | ')'                  { DPAREN }
          | ['O' 'o']"r"         { OR }
          | ['A' 'a']"nd"        { AND }
          | ['N' 'n']"ot"        { NOT }
          | ";"                  { VIRG }
          |"?"                   { INTEROGATION }
          |":"			              { DEUXPOINTS }
          | "=="					       { EGAL }
          |"="                   { EQUAL }
          | "<="					       {INFEGAL }
          | eof                  { raise Eof }
	        | _                    { raise TokenInconu }
