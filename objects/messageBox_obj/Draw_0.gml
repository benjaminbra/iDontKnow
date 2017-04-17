/// @description Load images based on the stepId

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(full_text_possibilities);
if(global.actualI<global.numberOfDialogs){

	sprite_index = asset_get_index("messageBox_"+global.dialogsList[global.actualI,0]+"_spt");
	draw_self();
	draw_text(self.x+15,self.y+15,global.dialogsList[global.actualI,1]);
} else {
	sprite_index = messageBox_grey_spt;
	draw_self();
	draw_text(self.x+15,self.y+15,global.endDialog);
	draw_set_font(end_game);
	draw_set_color(c_red);
	global.steps++;
	if(global.steps>=120){
		draw_text_transformed(room_width/2-200,room_height/2-200,"I don't KNOW !",1,1,-45);
	}
	
}