#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()
keyboardId1 := AHI.GetKeyboardId(your device VID, your device PID, 1)
cm1 := AHI.CreateContextManager(keyboardId1)

return

#if cm1.IsActive
; jp ^~ us =+
	^::=
	~::+
; jp ;+ us ;:
	;::;
	+::Send `:
; jp -= us _- 
	-::_
	=::Send -
; jp :* us '
	:::Send '
	**::Send "
; jp zenkaku us `~
	sc029::`
	+sc029::Send ~
; jp shft num to us shft num 
;	*+1::Send !
	*+2::Send @
;	*+3::Send #
;	*+4::Send $
;	*+5::Send %
	*+6::Send ^
	*+7::Send &
	*+8::Send *
	*+9::Send (
	*+0::Send )
	
; bracket 
	@::[
	[::]

; pipe backslash...
;	-::\
;	=::Send |
	]::\
	
;if
