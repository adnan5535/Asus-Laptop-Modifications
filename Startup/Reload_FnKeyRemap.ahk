/*

This script checks if the system is resuming from a low-power state.
If it is, this script runs FnKeyRemap.ahk and kills the AsusTPCenter.exe
and AsusTPLoader.exe processes. It then re-runs these two processes.

This script was created since FnKeyRemap needed to be
manually reloaded sometimes after the computer woke up from
sleep. The TP also stops recognizing multi-touch gestures after
waking up from sleep or hibernation. This script takes care of
both these issues.

*/


; Listen to the Windows power event "WM_POWERBROADCAST" (ID: 0x218):
OnMessage(0x218, "func_WM_POWERBROADCAST")
Return


func_WM_POWERBROADCAST(wParam, lParam)
{
	
	If (lParam = 0) {
		; PBT_APMRESUMEAUTOMATIC -> System resuming from low-power state
		If (wParam = 18) {
			Run C:\Users\Adnan\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\FnKeyRemap.ahk
			NewPID=0
			Process, wait, AsusTPCenter.exe, 5
			NewPID = %ErrorLevel%  ; Save the value immediately since ErrorLevel is often changed.
			if NewPID!=0 
			{
				Runwait, taskkill /im AsusTPCenter.exe /f
				Runwait, taskkill /im AsusTPLoader.exe /f
				Run C:\Program Files (x86)\ASUS\ASUS Smart Gesture\AsTPCenter\x64\AsusTPLoader.exe
				Run C:\Program Files (x86)\ASUS\ASUS Smart Gesture\AsTPCenter\x64\AsusTPCenter.exe		
			}
		}
	}
		
	Return
}