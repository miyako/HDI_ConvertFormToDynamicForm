C_TEXT:C284($object)

// Loop in all objects
For each ($object; oDynForm.pages[1].objects)
	
	// Change the font size and the height attribute
	If (oDynForm.pages[1].objects[$object].fontSize#Null:C1517)
		
		If (oDynForm.pages[1].objects[$object].fontSize=12)
			oDynForm.pages[1].objects[$object].fontSize:=18
			oDynForm.pages[1].objects[$object].height:=oDynForm.pages[1].objects[$object].height+6
		Else 
			oDynForm.pages[1].objects[$object].fontSize:=12
			oDynForm.pages[1].objects[$object].height:=oDynForm.pages[1].objects[$object].height-6
		End if 
		
		
	End if 
	
End for each 

oDynForm:=oDynForm

// Display the dynamic form in the subform
OBJECT SET SUBFORM:C1138(*; "Subform"; oDynForm)

