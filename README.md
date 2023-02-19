# Melon_booster 🍉🔥
 Boost your ssd & windows experience without reinstalling windows again & again
<p align="left">
  <img src="https://github.com/watermelonvault/Melon_booster/blob/main/pics/Melon.jpg" width="100"/>
</p>
Melon booster is a 3 step optimizer for windows operating system powerd by Powershell scripts.

`Lets check the results first`
 <table>
   <td>Before</td>
   <td>After</td>
  <tr>
    <td><img src="https://github.com/watermelonvault/Melon_booster/blob/main/pics/before.jpg"></td>
    <td><img src="https://github.com/watermelonvault/Melon_booster/blob/main/pics/after.jpg"></td>
  </tr>
 </table>

`Step 1: cleaning temps`
```bash
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

```
`Step 2: boosting C drive`
```bash
## ssd retrim for ssd only!
optimize-volume -DriveLetter C -ReTrim -verbose
## hdd defrag for hdd only!
optimize-Volume -DriveLetter C -Defrag -Verbose

```
`Step 3: restart computer`
```bash
Restart-Computer
```


