# LaTeX Vorlagen und Experimente

In diesem Repo finden sich etwas durcheinander meine LaTeX Vorlagen zum erstellen von Dokumenten.

## Dateien

### Templates

#### Kern

Diese Dateien werden zwingend benötigt, sie sind der Kern dieses gesamten Repos.

- **`myshorthands.sty`** ist ein Paket, welches weitere nützliche, für den Anwender nützliche Pakete einbindet und zusätzlich einige Kurzschreibweisen hinzufügt.
- **`mytext.cls`** ist eine Klasse, die `article` erweitert, Standardeinstellungen festlegt und weitere Pakete einbindet, die im Hintergrund arbeiten. `shorthands.sty` ist eine Abhängigkeit.

#### Erweiterungen

Die folgenden Dateien sind erweiterte Vorlagen.

- **`myletter.cls`** ist eine Erweiterung von `mytext.cls`, die das Schreiben von Briefen auf DIN-A4 Blättern vereinfacht.
- **`mycv.cls`** ist eine Erweiterung von `mytext.cls`, die das einfache Erstellen eines tabellarischen Lebenslaufes als DIN-A4 Dokument ermöglicht.

### Assets

- **`signature.png`** ist ein einfaches Bild meiner Unterschrift in schwarz mit transparentem Hintergrund.

### Beispiele

Folgende Dateien zeigen einige Beispiele für die Anwendung dieser Templates:

- `myarticle.tex` (importiert `section.tex` und zeigt außerdem `testimg.jpg` und `testcode.go` an)
- `myletter.tex`
- `mycv.tex`

