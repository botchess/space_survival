/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 25467EA5
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rGame"
if(room == rGame)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2F29579F
	/// @DnDParent : 25467EA5
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 32621FAE
		/// @DnDParent : 2F29579F
		room_goto_next();
	
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 018349B4
		/// @DnDParent : 2F29579F
		/// @DnDArgument : "soundid" "main_song"
		/// @DnDSaveInfo : "soundid" "1d150eca-7091-429f-8ed5-00a3b71eeb5a"
		audio_stop_sound(main_song);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0AC0A19C
		/// @DnDParent : 2F29579F
		/// @DnDArgument : "soundid" "Lose_Music"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "c4862a9b-c59c-4820-86a2-f13f2ee3e225"
		audio_play_sound(Lose_Music, 0, 1);
	}
}