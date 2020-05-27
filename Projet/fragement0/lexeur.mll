

{
  open Parseur
  exception Eof
  exception TokenInconu
}
rule token = parse
            [' ' '\t']           { token lexbuf }
          | ['\n' ]              { EOL }
	        | ['0'-'9']+'.'['0'-'9']* as lexem { NOMBRE (float_of_string lexem) }
          | ['a'-'z'] ['a'-'z'',' 'A'-'Z'',' '0'-'9'',' '-' ',' '_'] as lexem { IDENT lexem }
          | "Vrais"              {BOOL(true)}
          | "Faux"               {BOOL(false)}
          | '+'                  { PLUS }
          | '-'                  { MOINS }
          | '*'                  { FOIS }
          | '/'                  { DIV }
	        | '%'                  { MODULO }
          | '('                  { GPAREN }
          | ')'                  { DPAREN }
          |'='                   { AFFECT }
          |"?"                   { INTEROGATION }
          |":"			             { DEUXPOINTS }
          | ['O' 'o']"r"         { OR }
          | ['A' 'a']"nd"        { AND }
          | ['N' 'n']"ot"        { NOT }
          | "==="					       { EGAL }
          | "<="					       {INFEGAL }
          | eof                  { raise Eof }
	        | _                    { raise TokenInconu }
