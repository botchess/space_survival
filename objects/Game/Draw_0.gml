/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 380431E5
/// @DnDArgument : "expr" "room"
var l380431E5_0 = room;
switch(l380431E5_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 65D3B7AB
	/// @DnDParent : 380431E5
	/// @DnDArgument : "const" "rGame"
	case rGame:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 576C6A32
		/// @DnDParent : 65D3B7AB
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "455"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 455, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 30AEEE89
		/// @DnDParent : 65D3B7AB
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "475"
		/// @DnDArgument : "sprite" "sLives"
		/// @DnDSaveInfo : "sprite" "bf524d67-3e09-4e13-8fca-8f1d3edb5c18"
		var l30AEEE89_0 = sprite_get_width(sLives);
		var l30AEEE89_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l30AEEE89_2 = __dnd_lives; l30AEEE89_2 > 0; --l30AEEE89_2) {
			draw_sprite(sLives, 0, 20 + l30AEEE89_1, 475);
			l30AEEE89_1 += l30AEEE89_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1A52F093
	/// @DnDParent : 380431E5
	/// @DnDArgument : "const" "rStart"
	case rStart:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 0FFE2D56
		/// @DnDParent : 1A52F093
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2D1567CC
		/// @DnDParent : 1A52F093
		/// @DnDArgument : "color" "$FF3292FF"
		draw_set_colour($FF3292FF & $ffffff);
		var l2D1567CC_0=($FF3292FF >> 24);
		draw_set_alpha(l2D1567CC_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6544C67E
		/// @DnDParent : 1A52F093
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Space Survival ""
		draw_text_transformed(250, 100, string("Space Survival ") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 10E2AA3C
		/// @DnDParent : 1A52F093
		draw_set_colour($FFFFFFFF & $ffffff);
		var l10E2AA3C_0=($FFFFFFFF >> 24);
		draw_set_alpha(l10E2AA3C_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 07EA9274
		/// @DnDParent : 1A52F093
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Get The Highest Score You Can! ""
		draw_text(250, 200, string("Get The Highest Score You Can! ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 61F3FC86
		/// @DnDParent : 1A52F093
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "220"
		/// @DnDArgument : "caption" ""Up/Left/Right/Down = Move ""
		draw_text(250, 220, string("Up/Left/Right/Down = Move ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 56BD65E8
		/// @DnDParent : 1A52F093
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "240"
		/// @DnDArgument : "caption" ""Space = Shoot ""
		draw_text(250, 240, string("Space = Shoot ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 1C7CF7D7
		/// @DnDParent : 1A52F093
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO START << ""
		draw_text(250, 300, string(">> PRESS ENTER TO START << ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 38173859
		/// @DnDParent : 1A52F093
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6B2998F3
	/// @DnDParent : 380431E5
	/// @DnDArgument : "const" "rGameover"
	case rGameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 78C312DF
		/// @DnDParent : 6B2998F3
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 165BFDF6
		/// @DnDParent : 6B2998F3
		/// @DnDArgument : "color" "$FF00007F"
		draw_set_colour($FF00007F & $ffffff);
		var l165BFDF6_0=($FF00007F >> 24);
		draw_set_alpha(l165BFDF6_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 01971357
		/// @DnDParent : 6B2998F3
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""YOU LOST""
		draw_text_transformed(250, y + 100, string("YOU LOST") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 4631F4BE
		/// @DnDParent : 6B2998F3
		draw_set_colour($FFFFFFFF & $ffffff);
		var l4631F4BE_0=($FFFFFFFF >> 24);
		draw_set_alpha(l4631F4BE_0 / $ff);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 0615BEEF
		/// @DnDParent : 6B2998F3
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 200, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7C1A16CB
		/// @DnDParent : 6B2998F3
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" "">> PRESS ENTER TO RESTART << ""
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART << ") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 64DBFDB3
		/// @DnDParent : 6B2998F3
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}