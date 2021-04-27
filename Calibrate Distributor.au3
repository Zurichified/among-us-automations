; Mikael Basmaci - Among Us Calibrate Distributor Automation Script

#include <Array.au3>
Global $ypos = 70
Local $b1[2] = [1173,258]
Local $b2[2] = [1173,505]
Local $b3[2] = [1173,753]
Local $buttons[3] = [$b1,$b2,$b3]
Local $var = True


for $i=0 To 2
   While $var = True
   $currLeftColor = PixelGetColor(($buttons[$i])[0], ($buttons[$i])[1])
   ConsoleWrite(String($currLeftColor))
	  If $currLeftColor <> 0 Then
		 MouseClick("left",($buttons[$i])[0],($buttons[$i])[1]+$ypos, 1, 0)
		 $var = False
	  EndIf
   WEnd
   $var = True
Next