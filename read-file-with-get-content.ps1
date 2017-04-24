# read-file-with-get-content
Get-Content C:\Scripts\DisableOracleProcessing.txt

$a = Get-Content C:\Scripts\DisableOracleProcessing.txt
Write-Host $a

$a.GetType()

# read entire file, then display line 0 to 2
(Get-Content C:\Scripts\DisableOracleProcessing.txt)[0 .. 2]

# better: only read and display the first three lines
Get-Content C:\Scripts\DisableOracleProcessing.txt -TotalCount 3

# read entire file, then display the last three lines
(Get-Content C:\Scripts\DisableOracleProcessing.txt)[-1 .. -3]

# display the last three lines
Get-Content C:\Scripts\DisableOracleProcessing.txt -Last 3

# read entire file, then display something in the middle
(Get-Content C:\Scripts\DisableOracleProcessing.txt)[2 .. 5]

# sort content of file
(Get-Content C:\Scripts\DisableOracleProcessing.txt) | Sort-Object

# search for pattern in file(s)
# also can use wildcards
Select-String C:\Scripts\*.* -Pattern "log"

# some variants
Select-String C:\Scripts\*.* -Pattern "log" | Format-List
Select-String C:\Scripts\*.* -Pattern "log" | Select-Object Filename
Get-Content c:\scripts\test.txt | Foreach-Object {Get-Wmiobject -computername $_ win32_bios}
Get-Content C:\Scripts\DisableOracleProcessing.txt | Measure-Object

# byte by bate
Get-Content C:\Scripts\DisableOracleProcessing.txt -Encoding Byte

# faster: byte by byte
[System.IO.File]::ReadAllBytes('C:\Scripts\DisableOracleProcessing.txt')

# or finaly: the fastest
Get-Content C:\Scripts\DisableOracleProcessing.txt -Encoding Byte -ReadCount 0

# Get-Content Aliases
gc
type
cat

