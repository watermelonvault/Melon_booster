## MelonboosterScript by 🍉
$objShell = New-Object -ComObject Shell.Application 
$objFolder = $objShell.Namespace(0xA) 
$WinTemp = "c:\Windows\Temp\*" 

## Remove Temp Files  
Set-Location “C:\Windows\Temp”  
Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue  
Set-Location “C:\Windows\Prefetch”  
Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue  
Set-Location “C:\Documents and Settings”  
Remove-Item “.\*\Local Settings\temp\*” -Recurse -Force -ErrorAction SilentlyContinue  
Set-Location “C:\Users”  
Remove-Item “.\*\Appdata\Local\Temp\*” -Recurse -Force -ErrorAction SilentlyContinue  

## Running Disk Clean up Tool  
cleanmgr /sagerun:1 | out-Null  

## ssd retrim for ssd only!
optimize-volume -DriveLetter C -ReTrim -verbose
## hdd defrag for hdd only!
optimize-Volume -DriveLetter C -Defrag -Verbose

## Restart computer
Restart-Computer