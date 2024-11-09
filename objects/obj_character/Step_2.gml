// if(!collision_rectangle(x-9,y,x+9,y+1,obj_wall,false,false))
// {
//     gravity=0.24;
// }

// if(vspeed>0){
//     var ground= collision_rectangle(x-9,y,x+9,y+vspeed,obj_wall,false,false)
//     if(ground){
//         y=ground.y
//         vspeed=0;
//         gravity=0;
// 		jump_flag=false;
//     }
// }else if(vspeed<0){
//     var ceiling= collision_rectangle(x-9,y-18,x+9,y-18+vspeed,obj_wall,false,false)
//     if(ceiling){
//         y=ceiling.y + ceiling.sprite_height+1;
//         vspeed=0;
//         gravity=0;
// 		jump_flag=false;
//     }
// }