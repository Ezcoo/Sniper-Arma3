class CfgSounds
{
	sounds[] = {}; // OFP required it filled, now it can be empty or absent depending on the game's version

	class killNotification
	{
		name = "Killfeed notification";						// display name
		sound[] = { "rsc\common\sfx\notification_1.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
	};

    class loomingDanger
	{
		name = "Looming danger";						// display name
		sound[] = { "rsc\common\sfx\loomingDanger.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
	};

    class loomingDanger2
	{
		name = "Looming danger 2";						// display name
		sound[] = { "rsc\common\sfx\loomingDanger2.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
	};

    class loomingDanger3
	{
		name = "Looming danger 3";						// display name
		sound[] = { "rsc\common\sfx\loomingDanger3.ogg", 1, 1, 100 };	// file, volume, pitch, maxDistance
	};
};