/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5DF98829
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rGame"
if(room == rGame)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 298E41E2
	/// @DnDParent : 5DF98829
	/// @DnDArgument : "soundid" "main_song"
	/// @DnDSaveInfo : "soundid" "1d150eca-7091-429f-8ed5-00a3b71eeb5a"
	var l298E41E2_0 = main_song;
	if (audio_is_playing(l298E41E2_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 16F79006
		/// @DnDParent : 298E41E2
		/// @DnDArgument : "soundid" "main_song"
		/// @DnDSaveInfo : "soundid" "1d150eca-7091-429f-8ed5-00a3b71eeb5a"
		audio_stop_sound(main_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 41643E72
	/// @DnDParent : 5DF98829
	/// @DnDArgument : "soundid" "main_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "1d150eca-7091-429f-8ed5-00a3b71eeb5a"
	audio_play_sound(main_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 2D43D680
	/// @DnDParent : 5DF98829
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 273B56FC
	/// @DnDParent : 5DF98829
	/// @DnDArgument : "times" "15"
	repeat(15)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 79814140
		/// @DnDInput : 2
		/// @DnDParent : 273B56FC
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 661DF032
		/// @DnDParent : 273B56FC
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 7212A886
			/// @DnDParent : 661DF032
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 14D79E39
		/// @DnDParent : 273B56FC
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 40273064
			/// @DnDParent : 14D79E39
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = floor(random_range(room_width*0.7, room_width + 1));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 33E01F25
		/// @DnDInput : 2
		/// @DnDParent : 273B56FC
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 470EC406
		/// @DnDParent : 273B56FC
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 610687B5
			/// @DnDParent : 470EC406
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4C63F2C0
		/// @DnDParent : 273B56FC
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 30EBAB8B
			/// @DnDParent : 4C63F2C0
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "type" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3932C9C7
		/// @DnDParent : 273B56FC
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "oAsteroid"
		/// @DnDSaveInfo : "objectid" "1e46bba0-1f33-47b4-be51-5d901ce8b32b"
		instance_create_layer(xx, yy, "Instances", oAsteroid);
	}
}