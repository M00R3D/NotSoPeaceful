var _togg = keyboard_check_pressed(vk_add);

if(_togg){
    switch (image_alpha) {
        case 0 :
            image_alpha=1;
            break;
        
        default:
            image_alpha=0;
            break;
    }
}