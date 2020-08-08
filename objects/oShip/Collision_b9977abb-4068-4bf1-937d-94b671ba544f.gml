/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 01CF59C6
/// @DnDArgument : "soundid" "main_song"
/// @DnDSaveInfo : "soundid" "1d150eca-7091-429f-8ed5-00a3b71eeb5a"
audio_stop_sound(main_song);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0347CDD6
/// @DnDArgument : "soundid" "Crash_Sound"
/// @DnDSaveInfo : "soundid" "7a2ba558-216f-4b62-ad56-686c43ed0bb0"
audio_play_sound(Crash_Sound, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 74FBFB4A
/// @DnDApplyTo : b480bbee-7ac8-474a-bbb7-240296ad4f4c
with(Game) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5D3264F4
	/// @DnDParent : 74FBFB4A
	/// @DnDArgument : "steps" "60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 60);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5127EFA6
/// @DnDApplyTo : b480bbee-7ac8-474a-bbb7-240296ad4f4c
with(Game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2C8E5C38
	/// @DnDParent : 5127EFA6
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4230F8B5
instance_destroy();

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 6E69731D
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 68B6F404
	/// @DnDParent : 6E69731D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "oDebris"
	/// @DnDSaveInfo : "objectid" "82cbd7a7-f997-400c-9ae7-c3ed7218b11c"
	instance_create_layer(x + 0, y + 0, "Instances", oDebris);
}