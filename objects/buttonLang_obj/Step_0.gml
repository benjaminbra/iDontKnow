/// @description Insert description here
d =point_distance(mouse_x,mouse_y,self.x+(self.sprite_width/2),self.y+(self.sprite_height/2));

window_set_cursor(cr_none);
if(d<self.sprite_width/2){
	cursor_sprite = pointer_spt;
} else {
	cursor_sprite = cursor_spt;
}

if(mouse_check_button_released(mb_left) && d<self.sprite_width/2){
	global.lang=global.lang=="en"?"fr":"en";
	loadDialogs();
}