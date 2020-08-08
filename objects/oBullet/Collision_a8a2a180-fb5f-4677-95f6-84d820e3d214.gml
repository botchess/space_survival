/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 144A8FC4
/// @DnDArgument : "soundid" "Asteroid_Sound"
/// @DnDSaveInfo : "soundid" "aacdace3-28b6-4b59-ac6d-347eb2c89914"
audio_play_sound(Asteroid_Sound, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 483A87B4
/// @DnDApplyTo : b480bbee-7ac8-474a-bbb7-240296ad4f4c
with(Game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1CEED02A
	/// @DnDParent : 483A87B4
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3571E518
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 505576A0
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3498919A
	/// @DnDParent : 505576A0
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51E24B55
	/// @DnDParent : 505576A0
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "sHugeAsteroid"
	if(sprite_index == sHugeAsteroid)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 65BB2F54
		/// @DnDParent : 51E24B55
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 48C528F0
			/// @DnDParent : 65BB2F54
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "NewAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "oAsteroid"
			/// @DnDSaveInfo : "objectid" "1e46bba0-1f33-47b4-be51-5d901ce8b32b"
			var NewAsteroid = instance_create_layer(x + 0, y + 0, "Instances", oAsteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 77F5F5D4
			/// @DnDParent : 65BB2F54
			/// @DnDArgument : "expr" "sMedAsteroid"
			/// @DnDArgument : "var" "NewAsteroid.sprite_index"
			NewAsteroid.sprite_index = sMedAsteroid;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 689FF5B4
	/// @DnDParent : 505576A0
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "sMedAsteroid"
	if(sprite_index == sMedAsteroid)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 419CE4B3
		/// @DnDParent : 689FF5B4
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 54C474E4
			/// @DnDParent : 419CE4B3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "NewAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "oAsteroid"
			/// @DnDSaveInfo : "objectid" "1e46bba0-1f33-47b4-be51-5d901ce8b32b"
			var NewAsteroid = instance_create_layer(x + 0, y + 0, "Instances", oAsteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D597BFA
			/// @DnDParent : 419CE4B3
			/// @DnDArgument : "expr" "sSmallAsteroid"
			/// @DnDArgument : "var" "NewAsteroid.sprite_index"
			NewAsteroid.sprite_index = sSmallAsteroid;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 329BF88B
	/// @DnDParent : 505576A0
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6AE22930
		/// @DnDParent : 329BF88B
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "oDebris"
		/// @DnDSaveInfo : "objectid" "82cbd7a7-f997-400c-9ae7-c3ed7218b11c"
		instance_create_layer(x + 0, y + 0, "Instances", oDebris);
	}
}