/// @description Check if keyboard is pushed
show_debug_message(keyboard_key);
if(global.actualI<global.numberOfDialogs && keyboard_key == real(global.dialogsList[global.actualI,2])){
	global.actualI++;
}