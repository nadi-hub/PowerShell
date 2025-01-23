<#
Übung 6a: - Schreibe eine Funktion die ein Logfile in deinem Übungsverzeichnis schreibt.
            Als Parameter soll die Lognachricht, der Nachrichttyp(Info oder Error) mitgegeben werden.
            Die Lognachricht soll folgendes Format haben: 22.08.2023 07:16 - Info - Das ist die Lognachricht
Übung 6b: - Schreibe die Dateiennamen eures %TEMP% Verzeichnisses mit Hilfe der Funktion in das Logfile.
#>




# Übung 6a: Funktion zum Schreiben eines Logfiles
function Write-Log {
    param (
        [string]$Message,
        [ValidateSet("Info", "Error")]
        [string]$Type
    )
    
    $LogFile = "$env:USERPROFILE\Übung_Logfile.txt"  # Logfile im Benutzerverzeichnis
    $Timestamp = Get-Date -Format "dd.MM.yyyy HH:mm"
    $LogEntry = "$Timestamp - $Type - $Message"
    
    Add-Content -Path $LogFile -Value $LogEntry
}


6b)
$TempFiles = Get-ChildItem -Path $env:TEMP | Select-Object -ExpandProperty Name

foreach ($File in $TempFiles) {
    Write-Log "$File"
}
Get-Content "$env:USERPROFILE\Übung_Logfile.txt"