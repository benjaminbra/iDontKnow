/// loadDialogs()

// Load the dialog file
ini_open("dialogs_"+global.lang+".ini");

// Read the dialogs file
// Initialize the number of dialogs
global.numberOfDialogs = ini_read_real("properties", "numberOfDialogs", 0);
global.endDialog = ini_read_string("properties", "endDialog", "You win");

for(i=0;i<global.numberOfDialogs;i++){
	global.dialogsList[i,0] = ini_read_string("dialogs_block",string(i),"grey");
	global.dialogsList[i,1] = ini_read_string("dialogs_text",string(i),"undefined");
	global.dialogsList[i,2] = ini_read_string("dialogs_button",string(i),"none");
}

// Clone the dialogs file
ini_close();