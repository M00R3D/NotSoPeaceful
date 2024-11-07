var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if(_hor != 0){
    if(place_free(x+_hor*2,y))
    {
        x+=_hor*2;
    }
    image_xscale=_hor;
    sprite_index=spr_character_walk;
}else{sprite_index=spr_character;}

