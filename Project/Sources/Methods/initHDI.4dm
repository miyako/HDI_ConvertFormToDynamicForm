//%attributes = {"invisible":true}
ARRAY TEXT:C222(TabControl; 0)
ARRAY TEXT:C222(TextTabControl; 0)
ALL RECORDS:C47([Samples:1])
ORDER BY:C49([Samples:1]; [Samples:1]SampleSort:4; >)
SELECTION TO ARRAY:C260([Samples:1]Title:3; TabControl)
SELECTION TO ARRAY:C260([Samples:1]Text:2; TextTabControl)
UNLOAD RECORD:C212([Samples:1])

TabControl:=1

If (Is macOS:C1572)
	ST SET ATTRIBUTES:C1093(TextTabControl{TabControl}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
Else 
	ST SET ATTRIBUTES:C1093(TextTabControl{TabControl}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
End if 