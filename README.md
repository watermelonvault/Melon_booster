# Melon_booster 🍉🔥
 Boost your ssd & windows experience without reinstalling windows again & again inspired by [Kbvideos](https://youtu.be/seRDKEA-v7s)
<p align="left">
  <img src="https://github.com/watermelonvault/Melon_booster/blob/main/pics/Melon.jpg" width="100"/>
</p>
Melon booster is a portable app with 3 step optimizer for windows operating system powerd by Powershell scripts.

## Why use melon booster?
- faster boots
- faster app load times
- less hickups in ui

`Lets check the results first` application used [AS SSD Benchmark 2.0](https://www.majorgeeks.com/mg/getmirror/as_ssd_benchmark,1.html)
 <table>
   <td>Before</td>
   <td>After</td>
  <tr>
    <td><img src="https://github.com/watermelonvault/Melon_booster/blob/main/pics/before.jpg"></td>
    <td><img src="https://github.com/watermelonvault/Melon_booster/blob/main/pics/after.jpg"></td>
  </tr>
 </table>

## How it works

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
## How to use
- download the latest [release](https://github.com/watermelonvault/Melon_booster/releases/tag/V.1)
- note: 
  if you have SSD as C drive use the Melon-booster-ssd.exe
  if you have HDD as C drive use the Melon-booster-hdd.exe
- double click on the application & wait for the restart of pc
- done✔



