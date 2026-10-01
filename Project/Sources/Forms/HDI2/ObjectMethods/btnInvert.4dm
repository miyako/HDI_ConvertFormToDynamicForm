C_TEXT:C284($object)
C_LONGINT:C283(; $info)


If (oDynForm.pages[1].objects.Photo.left=20)
	oDynForm.pages[1].objects.Photo.left:=oDynForm.pages[1].objects.Photo.left+370
	$info:=-140
Else 
	oDynForm.pages[1].objects.Photo.left:=oDynForm.pages[1].objects.Photo.left-370
	$info:=140
End if 

// Loop in all objects
For each ($object; oDynForm.pages[1].objects)
	
	If ($object#"Photo") & (oDynForm.pages[1].objects[$object].type#"Button")
		oDynForm.pages[1].objects[$object].left:=oDynForm.pages[1].objects[$object].left+$info
	End if 
	
	
End for each 

oDynForm:=oDynForm

// Display the dynamic form in the subform
OBJECT SET SUBFORM:C1138(*; "Subform"; oDynForm)

