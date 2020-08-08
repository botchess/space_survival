/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0C1DF879
/// @DnDArgument : "soundid" "Zap2"
/// @DnDSaveInfo : "soundid" "ed614efc-ace2-4bcb-a97d-40d24e7aefae"
audio_play_sound(Zap2, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5F7EB860
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "NewBullet"
/// @DnDArgument : "objectid" "oBullet"
/// @DnDSaveInfo : "objectid" "583f6a6b-22cf-436f-b79e-44481b2f2f39"
NewBullet = instance_create_layer(x + 0, y + 0, "Instances", oBullet);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 01156AFC
/// @DnDArgument : "expr" "image_angle"
/// @DnDArgument : "var" "NewBullet.direction"
NewBullet.direction = image_angle;