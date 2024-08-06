params ["_playerCount"];

private _areaDiameter = 0;

switch (true) do
{
    case (_playerCount < 5): {_areaDiameter = 1000;};
    case (_playerCount >= 5 && _playerCount < 10): {_areaDiameter = 1250;};
    case (_playerCount >= 10 && _playerCount < 20): {_areaDiameter = 1500;};
    case (_playerCount >= 20 && _playerCount < 30): {_areaDiameter = 1750;};
    case (_playerCount >= 30 && _playerCount < 40): {_areaDiameter = 2000;};
    case (_playerCount >= 40 && _playerCount < 60): {_areaDiameter = 2500;};
    case (_playerCount >= 60 && _playerCount < 80): {_areaDiameter = 3000;};
    case (_playerCount >= 80 && _playerCount <= 100): {_areaDiameter = 3500;};
};

_areaDiameter;