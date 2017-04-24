

Get-Content "C:\Scripts\DisableOracleProcessing.txt" -Encoding Byte -ReadCount 16 | ForEach-Object {
  $output = ""
  foreach ( $byte in $_ ) {
#CALLOUT A
    $output += "{0:X2} " -f $byte
#END CALLOUT A
  }
  $output
}

