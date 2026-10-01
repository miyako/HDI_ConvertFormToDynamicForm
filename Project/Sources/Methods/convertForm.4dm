//%attributes = {}
C_OBJECT:C1216($oDynForm)

// Convert the Contact form in a dynamic form
$oDynForm:=FORM Convert to dynamic:C1570("Contact")

// Save the dynamic form in a file next to the data
TEXT TO DOCUMENT:C1237(Get 4D folder:C485(Data folder:K5:33)+"ContactForm.json"; JSON Stringify:C1217($oDynForm; *))