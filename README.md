# LaTeX Vorlagen und Experimente

- `myarticle` ist meine neueste Klasse,
- `letter` ist eine outdatete Briefklasse, die aber eben einen Briefkopf hat, den `myarticle` noch nicht unterstützt.

`pdflatex` muss das dokument mehrmals kompilieren, damit der table of contents korrekt generiert wird:
```sh
for i in {1..3}; do pdflatex myarticle.tex; done
```

## TODO

- [ ] Briefkopf für `myarticle`

