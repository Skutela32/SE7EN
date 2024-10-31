Config = {}
Config.Interior = vector3(-1097.02, -2738.24, -7.41) -- Interior to load where characters are previewed
Config.DefaultSpawn = vector3(1203.08, -3252.66, -49.0) -- Default spawn coords if you have start apartments disabled
Config.PedCoords = vector4(-1386.48, -472.96, 78.2, 96.84) -- Create preview ped at these coordinates
Config.HiddenCoords = vector4(-1395.87, -477.93, 78.2, 337.21) -- Hides your actual ped while you are in selection
Config.CamCoords = vector4(-1390.42, -473.64, 78.2, 279.53) -- Camera coordinates for character preview screen
Config.EnableDeleteButton = false -- Define if the player can delete the character or not
Config.customNationality = false -- Defines if Nationality input is custom of blocked to the list of Countries

Config.DefaultNumberOfCharacters = 1 -- Define maximum amount of default characters (maximum 5 characters defined by default)
Config.PlayersNumberOfCharacters = { -- Define maximum amount of player characters by rockstar license (you can find this license in your server's database in the player table)
    { license = "license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx", numberOfChars = 2 },
}