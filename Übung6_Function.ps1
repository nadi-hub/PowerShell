<#
Übung 6a: - Schreibe eine Funktion die ein Logfile in deinem Übungsverzeichnis schreibt.
            Als Parameter soll die Lognachricht, der Nachrichttyp(Info oder Error) mitgegeben werden.
            Die Lognachricht soll folgendes Format haben: 22.08.2023 07:16 - Info - Das ist die Lognachricht
Übung 6b: - Schreibe die Dateiennamen eures %TEMP% Verzeichnisses mit Hilfe der Funktion in das Logfile.
#>


function Write-CustomLog {
   param (
       [string]$Message,
       [ValidateSet('Info', 'Error')]
       [string]$Type,
       [string]$LogPath = ".\exercise.txt"
   ) 

        $zeitstempel = Get-Date -Format "dd.MM.yyyy HH:mm"
        $logEntry = "$Type - $zeitstempel - $Message"
        Add-Content $LogPath $logEntry
   
}

     Write-CustomLog "Das ist die Lognachricht" Info

     $tempFiles = Get-ChildItem -Path $env:TEMP
     foreach ($tempFile in $tempFiles) {
        Write-CustomLog "Datei: $($tempFile.Name)" "Info"
     }