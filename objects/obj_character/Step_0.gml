// var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
// var _jump = keyboard_check(ord("W"));
// if(_hor != 0){
//     if(place_free(x+_hor,y))
//     {
//         hspeed=_hor*2
//     }else{hspeed=0;}
//     image_xscale=_hor;
//     sprite_index=spr_character_walk;
// }else{sprite_index=spr_character;}

// if(place_free(x+_hor,y) and _jump and jump_flag==false){vspeed=-5;jump_flag=true;}

// x+=hspeed;
/// movement
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
if (place_meeting(x+hspd, y, obj_wall))
    {
    while (!place_meeting(x+sign(hspd), y, obj_wall))
    x += sign(hspd);
     hspd = 0;
    }

//move horizontally
x += hspd;
// vertical collision
if (place_meeting(x, y+vspd, obj_wall))
    {
    while (!place_meeting(x, y+sign(vspd), obj_wall))
    y += sign(vspd);
    vspd = 0;
    }
//move vertically
y += vspd;