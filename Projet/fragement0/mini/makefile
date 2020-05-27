all:
	ocamllex lexeur.mll
	ocamlyacc parseur.mly
	ocamlc -o interpreteur AST.ml parseur.mli lexeur.ml parseur.ml interpreteur.ml

clean:
	rm -rf interpreteur parseur.mli parseur.ml lexeur.ml *.cmi *.cmo *~

