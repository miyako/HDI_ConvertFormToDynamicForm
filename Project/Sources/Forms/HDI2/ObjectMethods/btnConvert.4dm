
// Convert the form in a dynamic form
convertForm

// Read form file
oDynForm:=JSON Parse:C1218(Document to text:C1236(Get 4D folder:C485(Data folder:K5:33)+"ContactForm.json"))

// Associate the dynamic form to the subform
OBJECT SET SUBFORM:C1138(*; "SubformDynamic"; oDynForm)


