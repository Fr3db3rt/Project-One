# read-file-with-get-content
Get-Content C:\Scripts\DisableOracleProcessing.txt

$a = Get-Content C:\Scripts\DisableOracleProcessing.txt
Write-Host $a

$a.GetType()

(Get-Content C:\Scripts\DisableOracleProcessing.txt)[0 .. 2]


