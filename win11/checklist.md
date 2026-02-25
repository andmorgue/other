- Connect Wi-fi
- Run Windows Update
- Change PC name
- Config Power
- Config Personalization
- Disable all Startup Apps
- Install Firefox via Terminal (Admin):
```
winget install --id Mozilla.Firefox --source winget
```
- Config Time in Terminal (Admin):
```
 reg add "HKLM\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /t REG_DWORD /d 1 /f
```
- Config Firefox
- Download and Install Lastest Nvidia Driver:
```
https://www.nvidia.com/en-us/geforce/drivers/
```
- Adjust Display frequency to 240Hz
- Download Zowie WHQL Drivers (win11):
```
https://zowie.benq.com/en-us/support/products/monitor/xl2546k/download.html
```
- Replace generic Display Driver on Device Manager > Display for Zowie ones.
- Download and install: Realtek, INF, Intel ME and Intel Lan driver:
```
https://pg.asrock.com/mb/Intel/B660M%20Phantom%20Gaming%204/index.asp#Download
```
- Config Sounds
- Disable System Sounds
- Reboot when Windows Update asks
- Login and Run Windows Update again
- Reboot again
- Remove unecessary Installed Apps
- Clear Start menu
- Clear Temporary files
- Config Notepad
- Config Windows Security
- Download and Install WinCompose:
```
https://github.com/samhocevar/wincompose/releases
```
- Install other Apps
- Tweaks via Terminal (admin):
```
iwr -useb https://christitus.com/win | iex
```
- O&O ShutUp
- Download printer basic drivers:
```
https://support.hp.com/ee-en/drivers/swdetails/hp-deskjet-ink-advantage-3700-all-inoneprinter-series/model/12780106/swItemId/al-242680-4
```
- Install Printer when it is online