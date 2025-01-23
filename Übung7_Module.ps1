<#
Übung 7a: - Erstelle ein Module Math mit den Funktionen "Sum", "Sub", "Div" und "Mul"
             Als Beispiel fuer die Methode Mul soll folgender String returned werden: 3 * 9 = 27
             Erstelle ein Script, in welchem das Module geladen wird und rufe alle Funktionen auf
Übung 7b: - Gib alle Funktionen des Moduls Math auf die Konsole aus
#>


7a
New-Item -ItemType Directory -Path "$env:USERPROFILE\source\repos\Modules/Math"

function Sum {
    param([double]$a, [double]$b)
    return "$a + $b = " + ($a + $b)
}

function Sub {
    param([double]$a, [double]$b)
    return "$a - $b = " + ($a - $b)
}

function Div {
    param([double]$a, [double]$b)
    if ($b -eq 0) {
        return "Fehler: Division durch Null ist nicht erlaubt!"
    }
    return "$a / $b = " + ($a / $b)
}

function Mul {
    param([double]$a, [double]$b)
    return "$a * $b = " + ($a * $b)
}

Export-ModuleMember -Function Sum, Sub, Div, Mul




# Modul Math importieren
Import-Module Math -Force

# Testaufrufe 
Write-Output (Sum -a 5 -b 3)
Write-Output (Sub -a 10 -b 4)
Write-Output (Div -a 15 -b 3)
Write-Output (Mul -a 3 -b 9)



C:\Users\nadja\source\repos\Math\Math.ps1   # kann ich öffnen

C:\Users\nadja\source\repos\LoadMath.ps1  # kann ich nicht öffnen


