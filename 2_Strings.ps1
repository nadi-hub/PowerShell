<#
a: - Nehme vom String1 die ersten 18 Zeichen und vom String2 die letzten 6 Zeichen
            und setzte sie zu einem neuen String zusammen. Speichere den String in eine neue Variabel.
            Gib den neuen String auf die Konsole aus.

b: - Lösche den Begriff "Windows " aus dem neuen String und speichere das Resultat in eine neue Variabel.
            Gib das Resultat auf die Konsole aus.

c: - Schreibe den Pfad des aktuellen Scriptes auf die Konsole.

d: - Schreibe den Namen deines Benutzers in eine Variable und gib ihn auf die Konsole aus.
            Benutze die passende Umgebungsvariable dafür.

e: - Schreibe den Namen deines Laptops in eine Variable und gib ihn auf die Konsole aus.
            Benutze die passende Umgebungsvariable dafür.
#>


$string1 = "Windows PowerShell ist ein leistungsfähiges Tool zur Automatisierung von Aufgaben"
$string2 = "Digital Talent"

 a)$neuerString = $string1.Substring(0, 18) + $string2.Substring($string2.Length - 6)
$neuerString



b) $resultString = $newString -replace "Windows ", ""
$resultString

c) $currentScriptPath = $MyInvocation.MyCommand.Path
$currentScriptPath

d) $userName = $env:USERNAME
$userName

e) $computerName = $env:COMPUTERNAME
$computerName

