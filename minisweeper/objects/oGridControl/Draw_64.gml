draw_surface(surf,0,0);

var _guiX = display_get_gui_width();
var _guiY = display_get_gui_height();

var _yy = _guiY-40;
if (os_type == os_android) {
	_yy = 50;	
}

draw_set_font(fMineTextMip0);
draw_set_color(textColor);
draw_set_halign(fa_right);

var _str = scr_get_formatted__time(gameplayTime);
var _targetX = string_width(_str)+20;
if (_targetX > timerX || resetting) {
	timerX = lerp_time(timerX,_targetX,0.1,deltaTimeS);
}

draw_sprite_ext(sWhiteStuff,0,_guiX-timerX,_yy,1.5,1,0,backColor,1);
draw_text(_guiX-20,_yy,_str);


if (minesX > 0 || minesLeft <= 5) {
	if (minesLeft <= 5) {
		minesX = clamp(minesX + deltaTimeS*3,0,1);
	} else {
		minesX = clamp(minesX - deltaTimeS*3,0,1);
	}
	draw_set_halign(fa_left)
	var _xx = ease_quadOut(0,100,minesX,1);
	var _bounce = ease_quadOut_peek(1,1.3,minesGuiBounce,0.5,1);
	
	draw_sprite_ext(sWhiteStuff,0,_xx,_yy,-1.5,1,0,backColor,1);
	draw_sprite_ext(sMineUncolored,1,_xx-60,_yy,1,1,0,mineColor,1);
	if (_bounce != 0) {
		draw_text_transformed(_xx-20+_bounce*5,_yy,string(round(minesLeft)),1/_bounce,_bounce,0);
	} else {
		draw_text(_xx-20,_yy,string(round(minesLeft)));
	}
}
minesGuiBounce = clamp(minesGuiBounce-deltaTimeS*6,0,1);