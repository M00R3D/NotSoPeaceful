if(combination==cheat_alarm)
{
   show_message("truco activado :V")
   combination="";
}

if(combination_run==cheat_run_left)
{
   global.char_hspd_plus=-10;
   combination_run="";
}


if(combination_run==cheat_run_right)
{
   global.char_hspd_plus=10;
   combination_run="";
}

if(combination_run=="AD" ||combination_run=="DA")
{
	combination_run="";
}