params ["_playerCount"];

private _areaRadius = 0;

switch (true) do
{
    case (_playerCount < 5): {_areaRadius = 250;};
    case (_playerCount >= 5 && _playerCount < 10): {_areaRadius = 375;};
    case (_playerCount >= 10 && _playerCount < 20): {_areaRadius = 500;};
    case (_playerCount >= 20 && _playerCount < 30): {_areaRadius = 750;};
    case (_playerCount >= 30 && _playerCount < 40): {_areaRadius = 1000;};
    case (_playerCount >= 40 && _playerCount < 60): {_areaRadius = 1250;};
    case (_playerCount >= 60 && _playerCount < 80): {_areaRadius = 1500;};
    case (_playerCount >= 80): {_areaRadius = 2000;};
};

_areaRadius;