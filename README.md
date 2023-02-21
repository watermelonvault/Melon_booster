# Melon_booster 🍉🔥
<p align="left">
  <img src="https://github.com/watermelonvault/Melon_booster/blob/main/pics/Melon.jpg" width="100"/>
</p>
Usually, the process leaks memory and starts putting pressure on the memory subsystem. Fragmented memory and too much page file usage can cause a sluggish feel. As you keep using windows without rebooting, more and more apps will pile up, running in the background. This happens irrespective of OS. This led to installing windows after a few couples of months of use and updates.
 Melon booster is a portable app with 3 step optimizer for the windows operating system powered by Powershell scripts. It boosts your Windows experience without reinstalling windows again & again.

## Why use melon booster?
- faster boots
- faster app load times
- fewer hiccups in UI
- faster read/write speed across the system

`Lets check the results` application used [AS SSD Benchmark 2.0](https://www.majorgeeks.com/mg/getmirror/as_ssd_benchmark,1.html)
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
- Download the latest [release](https://github.com/watermelonvault/Melon_booster/releases/tag/V.1)
- Note: if you have SSD as a C drive, use the Melon-booster-ssd.exe /if you have HDD as a C drive, use the Melon-booster-hdd.exe
- Double-click on the application & wait for the restart of pc
- Done🍉
