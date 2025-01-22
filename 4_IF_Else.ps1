<#
a: - Überprüfe auf deinem Gerät ein Prozess mit dem Namen "OneNote" läuft und gebe die ID des Prozesses aus
b: - Wenn der Prozess nicht läuft, gebe einen folgenden String aus "Prozess OneNote läuft nicht."
c: - Überprüfe ob in deinem Scriptverzeichnis die Datei "Scriptlog.log" existiert. Falls nicht erstelle die Datei mit dem Inhalt "Script gestartet"
#>

$processName = "OneNote"
$process = Get-Process -Name $processName 

if ($process) {
    "Prozess OneNote läuft. Prozess-ID: $($process.Id)"
} 

else {
    "Prozess OneNote läuft nicht."
}


Test-Path -Path "C:\Ihr\Pfad\scriptlog.log"

if (-not (Test-Path $logFilePath)) {5
    "Script gestartet" | Out-File -FilePath $logFilePath
} else {
    "Die Datei 'Scriptlog.log' existiert bereits."
}

