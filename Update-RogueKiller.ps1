echo "Downloading..." ; Invoke-WebRequest "https://download.adlice.com/api/?action=download&app=roguekillercmd&type=x64" -OutFile "C:\Users\arthur\OneDrive - ClearLink IT\Documents\scripts\rogue_files\RogueKillerCMD64.exe"
& "C:\Program Files\7-Zip\7z.exe" a -tzip "C:\Users\arthur\OneDrive - ClearLink IT\Documents\scripts\RogueKiller64.zip" "C:\Program Files\RogueKiller\RogueKiller64.exe" "C:\Users\arthur\OneDrive - ClearLink IT\Documents\scripts\rogue_files\*"

$DriveLetter = Get-WmiObject win32_LogicalDisk | Where { $_.VolumeName -eq "Transit" } | select -ExpandProperty DeviceID
$RKFolder = "Rogue Killer\"

if ($DriveLetter -eq $null) {echo "Flash drive not present, done."}
else {Copy-Item "C:\Users\arthur\OneDrive - ClearLink IT\Documents\scripts\RogueKiller64.zip" -Destination "$DriveLetter\$RKFolder"}

Read-Host -Prompt "Press any key to exit..."