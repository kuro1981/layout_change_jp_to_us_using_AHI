#SingleInstance force
#Persistent
#include Lib\AutoHotInterception.ahk

AHI := new AutoHotInterception()
keyboardId0 := AHI.GetKeyboardIdFromHandle("ACPI\VEN_MSI&DEV_0007")
keyboardId1 := AHI.GetKeyboardId(0xFEED, 0x6060, 1)
cm0 := AHI.CreateContextManager(keyboardId0)
cm1 := AHI.CreateContextManager(keyboardId1)

return

#if cm0.IsActive
	Home::BS
	End::return 
;if
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

; jp shft num to us shift num 
;	*+1::Send !
	*+2::Send @
;	*+3::Send #
;	*+4::Send $
;	*+5::Send %
	*+6::Send {^}
	*+7::Send &
	*+8::Send *
	*+9::Send (
	*+0::Send )

; ctrl
	*^1::^1
	*^2::^2
	*^3::^3
	*^4::^4
	*^5::^5
	*^6::^6
	*^7::^7
	*^8::^8
	*^9::^9
	*^0::^0

; alt
	*!1::!1
	*!2::!2
	*!3::!3
	*!4::!4
	*!5::!5
	*!6::!6
	*!7::!7
	*!8::!8
	*!9::!9
	*!0::!0

; winkey
	*#1::#1
	*#2::#2
	*#3::#3
	*#4::#4
	*#5::#5
	*#6::#6
	*#7::#7
	*#8::#8
	*#9::#9
	*#0::#0

; bracket
	@::[
	[::]

; pipe backslash...
;	-::\
;	=::Send |
	]::\
	
;if

