<#
a: - Füge zum Array "$fruits" drei weitere Früchte hinzu
b: - Gebe die letzten drei Einträge des "$fruits" Arrays auf die Konsole aus
c: - Schreibe alle laufenden Prozesse in ein Array und gebe die ersten drei Einträge auf der Konsole aus

#>

$fruits1 = "Apple","Pear","Banana","Orange"


$fruits1 += "Melon", "Peach", "Pineapple"

$fruits1



"Letzte drei Fr�chte im Array:"
$fruits1[-3..-1]


$processes = Get-Process
"Erste drei laufende Prozesse:"
$processes[0..2] 