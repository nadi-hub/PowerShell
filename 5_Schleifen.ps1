<#
a: - Schreibe alle Dateinamen und ihre Dateigrösse des Verzeichnisses C:\Windows\System32 in ein Array
b: - Erstelle ein neues Array mit allen Files die grösser als 3MB sind. Speichere nur Dateinamen und Dateigrösse
c: - Loope durch alle laufenden Prozesse und beende die Schlaufe beim ersten Prozess der im Namen mit einem O beginnt. 
            Gebe den Namen des Prozesses und Anzahl Durchgänge auf der Konsole aus.
#>


$dateien = Get-ChildItem -Path "C:\Windows\System32" | Select-Object Name, Length

$dateien


$grosseDateien = Get-ChildItem -Path "C:\Windows\System32" | 
   Where-Object { $_."Size(MB)" -gt 3 } |
   Select-Object

$grosseDateien



$counter = 0
$foundProcess = $null
$processes = Get-Process

while ($counter -lt $processes.Count) {
    if ($processes[$counter].Name -like 'O*') {
        $foundProcess = $processes[$counter].Name
        break
    }
    $counter++
}

Write-Host "Gefundener Prozess: $foundProcess"
Write-Host "Anzahl Durchgänge: $counter"





