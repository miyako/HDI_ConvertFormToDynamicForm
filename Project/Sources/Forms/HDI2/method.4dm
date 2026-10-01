var oDynForm : Object

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		initHDI
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (Is macOS:C1572)
			ST SET ATTRIBUTES:C1093(TextTabControl{TabControl}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 16)
		Else 
			ST SET ATTRIBUTES:C1093(TextTabControl{TabControl}; ST Start text:K78:15; ST End text:K78:16; Attribute text size:K65:6; 14)
		End if 
		
		
		Case of 
			: (TabControl=2)
				
				// Associate the dynamic form to the subform
				OBJECT SET SUBFORM:C1138(*; "SubformDynamic"; oDynForm)
				
			: (TabControl=3)
				
				// Associate the dynamic form to the subform
				OBJECT SET SUBFORM:C1138(*; "Subform"; oDynForm)
				
				
		End case 
		
End case 