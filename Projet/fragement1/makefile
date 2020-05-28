all:
	ocamllex lexeur.mll
	ocamlyacc parseur.mly
	ocamlc -o Projet AST.ml parseur.mli lexeur.ml parseur.ml Projet.ml

clean:
	rm -rf Projet parseur.mli parseur.ml lexeur.ml *.cmi *.cmo *~
