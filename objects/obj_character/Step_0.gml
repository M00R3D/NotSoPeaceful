var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _jump = keyboard_check_pressed(ord("W"));
if(_hor != 0){
    if(place_free(x+_hor,y))
    {
        x+=_hor*2;
    }else{hspeed=0;}
    image_xscale=_hor;
    sprite_index=spr_character_walk;
}else{sprite_index=spr_character;}

if(place_free(x+_hor,y) and _jump and jump_flag==false)
{
    vspeed=-5;
	jump_flag=true;
}