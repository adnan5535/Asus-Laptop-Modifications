#SingleInstance force
#InstallKeybdHook
; + & F10::Send {F10}
; + & F11::Send {F11}
; + & F12::Send {F12}
F10::Volume_Mute
F11::Volume_Down
F12::Volume_Up
RControl & Up:: Send {PgUp}
RControl & Down:: Send {PgDn}
Pause::Send {=}
RShift & Pause::Send {+}
SC00D::Send {=}
+SC00D::Send {+}
!x::
Suspend
Return
; x::Send {x}