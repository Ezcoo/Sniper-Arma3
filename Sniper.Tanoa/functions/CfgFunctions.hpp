
#ifdef DEBUG_ENABLED_FULL
allowFunctionsRecompile = 1;
allowFunctionsLog = 1;
#endif

class CfgFunctions
{

	class sniper
	{

		class cfg
		{

			class getArtyProbability { file = "functions\cfg\fn_getArtyProbability.sqf"; };
			class getOutOfZoneArtySafeDistance { file = "functions\cfg\fn_getOutOfZoneArtySafeDistance.sqf"; };
			class getOutOfZoneArtySpread { file = "functions\cfg\fn_getOutOfZoneArtySpread.sqf"; };
			class getParachuteSpawnAltitude { file = "functions\cfg\fn_getParachuteSpawnAltitude.sqf"; };
			class getPlayableAreaRadius { file = "functions\cfg\fn_getPlayableAreaRadius.sqf"; };
			class getPlayerCount { file = "functions\cfg\fn_getPlayerCount.sqf"; };

		};

		class core
		{

			class helloWorld { file = "functions\core\fn_helloWorld.sqf"; };

		};

		class map
		{

			class commitPlayableAreaSizeChange { file = "functions\map\fn_commitPlayableAreaSizeChange.sqf"; };
			class drawPlayableArea { file = "functions\map\fn_drawPlayableArea.sqf"; };
			class monitorPlayableAreaSize { file = "functions\map\fn_monitorPlayableAreaSize.sqf"; };

		};

		class misc
		{

			class callArtyOnPlayer { file = "functions\misc\fn_callArtyOnPlayer.sqf"; };
			class checkIfPlayerInSafezone { file = "functions\misc\fn_checkIfPlayerInSafezone.sqf"; };
			class monitorPlayersSafezone { file = "functions\misc\fn_monitorPlayersSafezone.sqf"; };
			class spawnParachute { file = "functions\misc\fn_spawnParachute.sqf"; };

		};

	};

};

