/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 65C9947C
/// @DnDArgument : "expr" "room"
var l65C9947C_0 = room;
switch(l65C9947C_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 091F4CC7
	/// @DnDParent : 65C9947C
	/// @DnDArgument : "const" "rStart"
	case rStart:
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 3AFAD3A3
		/// @DnDParent : 091F4CC7
		room_goto_next();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 099D50E4
	/// @DnDParent : 65C9947C
	/// @DnDArgument : "const" "rGameover"
	case rGameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 04F703B0
		/// @DnDParent : 099D50E4
		game_restart();
		break;
}