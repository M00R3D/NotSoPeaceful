if (place_meeting(x, y+1, obj_wall))
    {
    vspd = 0;
    }
else{   if (vspd < 10){vspd += grav;}   }



// Horizontal collision
if (place_meeting(x+hspd, y, obj_wall))
    {
		while (!place_meeting(x+sign(hspd), y, obj_wall))
			x += sign(hspd);
			hspd = 0;
    }


//move horizontally
x += hspd ;
// vertical collision
if (place_meeting(x, y+vspd, obj_wall))
    {
    while (!place_meeting(x, y+sign(vspd), obj_wall))
    y += sign(vspd);
    vspd = 0;
    }
//move vertically
y += vspd;