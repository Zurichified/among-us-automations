; Mikael Basmaci - Among Us Fix Wiring Automation Script
; First of all, start with hard-coding the coordinates of the cables on the left part

#include <Array.au3>

Local $l1[2] = [596,293]
Local $l2[2] = [596,465]
Local $l3[2] = [596,636]
Local $l4[2] = [596,809]
Local $lefts[4] = [$l1,$l2,$l3,$l4]

Local $r1[2] = [1284,292]
Local $r2[2] = [1284,466]
Local $r3[2] = [1284,638]
Local $r4[2] = [1284,808]
Local $rights[4] = [$r1,$r2,$r3,$r4]

for $i=0 To 3
   $currLeftColor = PixelGetColor(($lefts[$i])[0], ($lefts[$i])[1])
   for $j=0 To 3
	  $currRightColor = PixelGetColor(($rights[$j])[0], ($rights[$j])[1])
	  If $currLeftColor = $currRightColor Then
		 MouseClickDrag("left", ($lefts[$i])[0], ($lefts[$i])[1], ($rights[$j])[0], ($rights[$j])[1], 0)
		 ExitLoop
	  EndIf
   Next
Next





;MouseClickDrag("left", 596, 292, 1285, 637, 5)

