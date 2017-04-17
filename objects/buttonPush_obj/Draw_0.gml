if(global.actualI<global.numberOfDialogs){

	//Define the button to press
	actualButton = real(global.dialogsList[global.actualI,2]);
	if(actualButton >= 65 && actualButton <= 90){
		global.buttonToPress = chr(actualButton);
	} else if(actualButton == 13){
		global.buttonToPress = "Enter";
	}
	
	draw_self();
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(self.x,self.y,"Press "+global.buttonToPress);
	
}