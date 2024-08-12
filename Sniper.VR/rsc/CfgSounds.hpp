class CfgSounds
{
	sounds[] = {}; // OFP required it filled, now it can be empty or absent depending on the game's version

	class notification1
	{
		name = "Killfeed notification";						// display name
		sound[] = { "rsc\common\sfx\notification_1.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
	};
};