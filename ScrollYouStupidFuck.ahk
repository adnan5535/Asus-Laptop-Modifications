;Brute force kill all TPLoader and TPCenter Processes and restart an instance of each
;Basically makes the stupid touchpad scroll again (and other multi-touch gestures)
;Fucking fuck this fucking piece of fucking fucked up fuck-waddy, fuck-stained, fucky fuck

Runwait, taskkill /im AsusTPLoader.exe /f
Runwait, taskkill /im AsusTPCenter.exe /f
Run C:\Program Files (x86)\ASUS\ASUS Smart Gesture\AsTPCenter\x64\AsusTPLoader.exe
Run C:\Program Files (x86)\ASUS\ASUS Smart Gesture\AsTPCenter\x64\AsusTPCenter.exe