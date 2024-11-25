var rkey = keyboard_check(ord("D"));
var lkey = keyboard_check(ord("A"));
var jkey = keyboard_check(ord("W"));
var _hor=rkey-lkey;
if (place_meeting(x, y+1, obj_wall))
    {
    vspd = 0;
    if (jkey)
        {
        vspd = -jspd;
        }
    }
else{   if (vspd < 10){vspd += grav;}   }

if(rkey){image_xscale=1;}   if(lkey){image_xscale=-1;}
if (_hor==0){
        hspd = 0;
        sprite_index=spr_character;
    }else
    {
        sprite_index=spr_character_walk;
        hspd=spd*_hor;
    }

// Horizontal collision
if (place_meeting(x+hspd+global.char_hspd_plus, y, obj_wall))
    {
		while (!place_meeting(x+sign(hspd), y, obj_wall))
			x += sign(hspd);
			hspd = 0;
		global.char_hspd_plus=0;
    }else{x += hspd + global.char_hspd_plus;}


//move horizontally
// vertical collision
if (place_meeting(x, y+vspd, obj_wall))
    {
    while (!place_meeting(x, y+sign(vspd), obj_wall))
    y += sign(vspd);
    vspd = 0;
    }
//move vertically
y += vspd;


if(global.char_hspd_plus>0){global.char_hspd_plus-=1}
if(global.char_hspd_plus<0){global.char_hspd_plus+=1}
