/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 1A6880C7
/// @DnDInput : 5
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "sSmallAsteroid"
/// @DnDArgument : "option_1" "sMedAsteroid"
/// @DnDArgument : "option_2" "sHugeAsteroid"
/// @DnDArgument : "option_3" "sHugeAsteroid"
/// @DnDArgument : "option_4" "sMedAsteroid"
sprite_index = choose(sSmallAsteroid, sMedAsteroid, sHugeAsteroid, sHugeAsteroid, sMedAsteroid);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 036D78D4
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 304FEF34
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
image_angle = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 4A60E191
/// @DnDArgument : "speed" "1"
speed = 1;