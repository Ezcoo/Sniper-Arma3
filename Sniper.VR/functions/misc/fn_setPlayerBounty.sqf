params ["_receivedBounty"];

if (isNil "PLAYER_BOUNTY") then {
    PLAYER_BOUNTY = 0;
};

PLAYER_BOUNTY = PLAYER_BOUNTY + _receivedBounty;