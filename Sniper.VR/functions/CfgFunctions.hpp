
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

			class playableAreaDiameter { file = "functions\cfg\fn_playableAreaDiameter.sqf"; };

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

		};

	};

};

