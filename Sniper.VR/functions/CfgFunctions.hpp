
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
			class getPlayerBounty { file = "functions\cfg\fn_getPlayerBounty.sqf"; };
			class getPlayerCount { file = "functions\cfg\fn_getPlayerCount.sqf"; };
			class getProximityWarningDistanceThreshold { file = "functions\cfg\fn_getProximityWarningDistanceThreshold.sqf"; };
			class getProximityWarningProbability { file = "functions\cfg\fn_getProximityWarningProbability.sqf"; };

		};

		class core
		{

			class helloWorld { file = "functions\core\fn_helloWorld.sqf"; };

		};

		class events
		{

			class playerKilled { file = "functions\events\fn_playerKilled.sqf"; };
			class playerKilledServer { file = "functions\events\fn_playerKilledServer.sqf"; };
			class playerRespawn { file = "functions\events\fn_playerRespawn.sqf"; };
			class setupPlayerEHs { file = "functions\events\fn_setupPlayerEHs.sqf"; };

		};

		class fx
		{

			class playSoundUI { file = "functions\fx\fn_playSoundUI.sqf"; };

		};

		class init
		{

			class playerConnected { file = "functions\init\fn_playerConnected.sqf"; };

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
			class monitorPlayersProximity { file = "functions\misc\fn_monitorPlayersProximity.sqf"; };
			class monitorPlayersSafezone { file = "functions\misc\fn_monitorPlayersSafezone.sqf"; };
			class resetLocalPlayerBounty { file = "functions\misc\fn_resetLocalPlayerBounty.sqf"; };
			class sendSystemChat { file = "functions\misc\fn_sendSystemChat.sqf"; };
			class setPlayerBounty { file = "functions\misc\fn_setPlayerBounty.sqf"; };
			class spawnParachute { file = "functions\misc\fn_spawnParachute.sqf"; };

		};

	};

};

