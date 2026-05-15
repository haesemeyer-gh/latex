# LaTeX Vorlagen und Experimente

`pdflatex` muss, wenn es ein inhaltsverzeichnis gibt, das dokument mehrmals kompilieren, damit der table of contents korrekt generiert wird:
```sh
for i in {1..3}; do pdflatex myarticle.tex; done
```

