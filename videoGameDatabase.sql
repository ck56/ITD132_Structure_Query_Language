​/* ​​

        Colleen Karg - ITD 132: Final Project


    1. What​ ​is​ ​the​ ​purpose​ ​of​ ​your​ ​database​ ​(why​ ​did​ ​you​ ​do​ ​it)

      The purpose of this table is to catalog my collection of video game consoles,
      some accesories, and games since I don't currently have a list of everything I own.

​ ​​ ​​ ​2. What​ ​tables​ ​you​ ​defined

      accessories
      consoles
      games
      gamesByConsole

      consolesAndAccessories - VIEW
      consolesAndGames - VIEW


​ ​​ ​​ ​3. A​ ​diagram​ ​or​ ​description​ ​of​ ​the​ ​relationships​ ​between​ ​the​ ​tables

      I defined a Consoles table to keep track of the individual consoles
      that I own and any information that’s relevant to it.

      I defined the gamesByConsoles table to be a link table between
      consoles and game information so the information stays separate.

      Accessories joins to consoles and keeps track of any additional
      components - helpful since I have many duplicates.

      Games table operates similarly to consoles by keeping track of
      relevant information plus how many copies I have since I have
      duplicates.

      All keys are defined in the table set up.

​ ​​ ​​ ​4. The​ ​purpose​ ​of​ ​each​ ​table.

      accessories - records number of accessories

      consoles - records a consoleID, the name of the console,
      the year released, the color of the system

      games - records gameID, name of the game, and the year it was released
      gamesByConsole

      gamesByConsoles - link table between consoles and games

​ ​​ ​​ ​5. The​ ​order​ ​that​ ​I​ ​should​ ​run​ ​your​ ​scripts​ ​in.

      The order that they appear in - starting with question 3.

*/

CREATE TABLE consoles
(
  consoleID integer NOT NULL AUTO_INCREMENT,
  consoleName varchar(75) NOT NULL,
  yearReleased int(4),
  consoleColor varchar(75) NOT NULL,
  PRIMARY KEY (consoleID)
);

CREATE TABLE games
(
  gameID integer NOT NULL AUTO_INCREMENT,
  gameName varchar(75) NOT NULL,
  yearReleased int(4),
  numOfCopies int(2),
  PRIMARY KEY (gameID)
);

CREATE TABLE accessories
(
  consoleID integer,
  numOfControllers int(2),
  PRIMARY KEY (consoleID),
  FOREIGN KEY (consoleID) REFERENCES consoles(consoleID)
);

CREATE TABLE gamesByConsole
(
  consoleID integer NOT NULL,
  gameID integer NOT NULL,
  PRIMARY KEY (consoleID, gameID),
  FOREIGN KEY (consoleID) REFERENCES consoles(consoleID),
  FOREIGN KEY (gameID) REFERENCES games(gameID)
);

INSERT INTO consoles
VALUES
(
  default,
  'Sega Genesis',
  1989,
  'Black'
);

INSERT INTO consoles
VALUES
(
  default,
  'Sega Pico',
  1994,
  'Green/Purple'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo Game Boy Color',
  1998,
  'Purple'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo Game Boy Advance',
  2001,
  'Fuschia'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo Game Boy Advance SP',
  2003,
  'Cobalt Blue'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo DS Lite',
  2006,
  'Black'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo DSi XL',
  2010,
  'Bronze'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo 3DS',
  2011,
  'Cosmo Black'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo 3DS XL',
  2012,
  'Pink/White'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo Switch',
  2017,
  'Grey'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo Switch Lite',
  2019,
  'Turquoise'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo 64',
  1996,
  'Ice Blue'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo GameCube',
  2001,
  'Purple'
);

INSERT INTO consoles
VALUES
(
  default,
  'Nintendo Wii',
  2011,
  'White'
);

INSERT INTO consoles
VALUES
(
  default,
  'XBOX 360 S',
  2012,
  'Black'
);

INSERT INTO consoles
VALUES
(
  default,
  'Playstation 2 Slim',
  2004,
  'Silver'
);

INSERT INTO consoles
VALUES
(
  default,
  'Playstation 4',
  2013,
  'Black'
);

-- Nintendo Switch Games --

INSERT INTO games
VALUES
(
  default,
  'Animal Crossing: New Horizons',
  2020,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Mario Kart 8 Deluxe',
  2017,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Legend of Zelda: Breath of the Wild',
  2017,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Sword',
  2019,
  1
);

INSERT INTO games
VALUES
(
  default,
  'New Pokemon Snap',
  2021,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Stardew Valley',
  2016,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Fire Emblem: Three Houses',
  2019,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Pokemon: Let's Go, Pikachu!",
  2018,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Untitled Goose Game',
  2019,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Overcooked 2',
  2018,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Civilization VI',
  2016,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Ori and the Blind Forest',
  2019,
  1
);

-- Nintendo 3DS Games --

INSERT INTO games
VALUES
(
  default,
  'Cooking Mama 4: Kitchen Magic',
  2011,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Animal Crossing: Happy Home Designer',
  2015,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon: Alpha Sapphire',
  2014,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Fire Emblem Awakening',
  2013,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Animal Crossing New Leaf',
  2013,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Fire Emblem Fates: Birthright',
  2015,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Moon',
  2016,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Y',
  2013,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Legend of Zelda: Ocarina of Time 3D',
  2011,
  1
);

--Nintendo DS Games--

INSERT INTO games
VALUES
(
  default,
  'Pokemon SoulSilver',
  2010,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Cooking Mama 2: Cookstar',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Yoshi Touch and Go',
  2005,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Harry Potter and the Order of the Phoenix',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Legend of Zelda: Phantom Hourglass',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Animal Crossing: Wild World',
  2005,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Zoo Keeper',
  2010,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Bleach: Dark Souls',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Final Fantasy III',
  2006,
  1
);

-- Gameboy Color Games --

INSERT INTO games
VALUES
(
  default,
  'Looney Tunes: Twouble!',
  1998,
  1
);

INSERT INTO games
VALUES
(
  default,
  "A Bug's Life",
  1998,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Blue',
  1998,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Red',
  1998,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Special Pikachu Edition',
  1999,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Monopoly',
  1996,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Trading Card Game',
  2000,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Quest for Camelot',
  1998,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Frogger',
  1998,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Monster's Inc.",
  2001,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Mickey's Racing Adventure",
  1999,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Grinch',
  2000,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Who Wants To Be A Millionare 2nd Edition',
  2000,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Tom and Jerry',
  1999,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Tarzan',
  1999,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Chicken Run',
  2000,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Shrek: Fairy Tale Freakdown',
  2001,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Zebco Fishing',
  1999,
  1
);

INSERT INTO games
VALUES
(
  default,
  'MTV: Skateboarding',
  2000,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Dinosaur',
  2000,
  1
);

-- Gameboy Advance Games--

INSERT INTO games
VALUES
(
  default,
  'Ice Age',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'SSX3',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Lego Bionicle',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Incredibles',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Super Mario World: Super Mario Advance 2',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Sapphire',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Firered',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Prince of Persia: Sands of Time',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Harry Potter and the Sorcerer's Stone",
  2001,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Scooby-Doo Mystery Mayhem',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Finding Nemo',
  2003,
  1
);

-- Sega Genesis Games --

INSERT INTO games
VALUES
(
  default,
  'Aladdin',
  1993,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Sonic the Hedgehog 2',
  1992,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Sword of Vermillion',
  1991,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Sonic the Hedgehog',
  1991,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Forgotten Worlds',
  1989,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Jurassic Park: Rampage Edition',
  1994,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Mighty Morphin Power Rangers The Movie',
  1995,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Eternal Champions',
  1993,
  1
);

INSERT INTO games
VALUES
(
  default,
  'RBI Baseball',
  1993,
  1
);

INSERT INTO games
VALUES
(
  default,
  'General Chaos',
  1993,
  1
);

--Sega Pico Games--

INSERT INTO games
VALUES
(
  default,
  'Magic Crayons',
  1994,
  1
);

INSERT INTO games
VALUES
(
  default,
  'A Year at Pooh Corner',
  1994,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Math Antics with 101 Dalmations',
  1996,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pocahontas Riverbend Aventures',
  1995,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Lion King: Adventures at Pride Rock',
  1995,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Mickey's Blast into the Past",
  1994,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Sonic the Hedgehog's Gameworld",
  1996,
  1
);

-- Playstation 1 Games --

INSERT INTO games
VALUES
(
  default,
  'Final Fantasy VII',
  1997,
  1
);

-- Playstation 2 Games --

INSERT INTO games
VALUES
(
  default,
  'Star Wars Battlefront II',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Lego Star Wars II: The Original Trilogy',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Eragon',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Final Fantasy VII: Dirge of Cerberus',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Star Wars: The Force Unleashed',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  '.hack//Infection',
  2002,
  1
);
INSERT INTO games
VALUES
(
  default,
  'The Lord of the Rings: The Third Age',
  2004,
  1
);

-- Playstation 4 Games --

INSERT INTO games
VALUES
(
  default,
  'Star Wars Jedi: Fallen Order',
  2019,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Spyro Reignited Trilogy',
  2018,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Dragon Age: Inquisition',
  2014,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Middle Earth: Shadow of Mordor',
  2014,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Final Fantasy XV',
  2016,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Star Wars Battlefront',
  2015,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Abzu',
  2016,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Witcher III: Wild Hunt',
  2015,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Journey',
  2015,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Mass Effect Andromeda',
  2017,
  1
);

INSERT INTO games
VALUES
(
  default,
  "No Man's Sky",
  2016,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Star Wars Battlefront II',
  2017,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Minecraft',
  2019,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Elder Scrolls Online: Tamriel Unlimited',
  2014,
  1
);

-- Nintendo 64 Games --

INSERT INTO games
VALUES
(
  default,
  'Mario Kart 64',
  1997,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Super Smash Bros.',
  1999,
  1
);

INSERT INTO games
VALUES
(
  default,
  "The Legend of Zelda: Majora's Mask",
  2000,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Donkey Kong 64',
  1999,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Tony Hawk's Pro Skater",
  2000,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Legend of Zelda: Ocarina of Time ',
  1998,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Scooby-Doo: Classic Creep Capers',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Star Fox 64',
  1997,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pilotwings 64',
  1996,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Paper Mario',
  2001,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Super Mario 64',
  1996,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Stadium',
  2000,
  1
);

-- GameCube Games --

INSERT INTO games
VALUES
(
  default,
  'The Legend of Zelda: Four Swords Adventures',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Animal Crossing',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Legend of Zelda: Twilight Princess',
  2006,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Star Fox Adventures',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Geist',
  2005,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Resident Evil 4',
  2005,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Metroid Prime 2 Echoes',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Lord of the Rings: The Two Towers',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Lord of the Rings: The Return of the King',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Robots',
  2005,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Paper Mario and the Thousand Year Door',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Billy Hatcher and the Giant Egg',
  2001,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Mario Party 6',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Pokemon Colosseum',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Baten Kaitos Eternal Wings and the Lost Ocean',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Metroid Prime',
  2002,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Tales of Symphonia',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Star Fox Assault',
  2004,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Tony Hawk's Pro Skater 4",
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Fire Emblem: Path of Radiance',
  2005,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Legend of Zela: Wind Waker',
  2006,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Harry Potter Quidditch World Cup',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Teenage Mutant Ninja Turtles',
  2003,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Hunter: The Reckoning',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Resident Evil Zero',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Resident Evil',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Super Smash Bros Melee',
  2001,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Star Wars Jedi Knight II Jedi Outcast',
  2002,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Viewtiful Joe',
  2003,
  1
);

-- Wii Games --

INSERT INTO games
VALUES
(
  default,
  'Wii Sports Resort',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Okami',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Star Wars The Clone Wars',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Wii Music',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Super Smash Brothers Brawl',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Legend of Zelda: Twilight Princess',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Animal Crossing: City Folk',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Bleach: Shattered Blade',
  2007,
  1
);

-- Xbox 360 Games --

INSERT INTO games
VALUES
(
  default,
  "Dragon's Dogma",
  2012,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Darksiders II',
  2012,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Final Fantasy XIII-2',
  2012,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Grand Theft Auto V',
  2013,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Tales of Vesperia',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Mass Effect 2',
  2010,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Mass Effect 3',
  2012,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Final Fantasy XIII',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Assassin's Creed III",
  2012,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Guitar Hero II',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Elder Scrolls V: Skyrim',
  2011,
  3
);

INSERT INTO games
VALUES
(
  default,
  'Dragon Age II',
  2011,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Call of Duty 2',
  2005,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Lord of the Rings: War in the North',
  2011,
  1
);

INSERT INTO games
VALUES
(
  default,
  'FEAR',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Dead Island',
  2011,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Dark Messiah Might and Magic Elements',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Metro: Last Light',
  2013,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Borderlands 2',
  2012,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Battlefield Bad Company 2',
  2010,
  2
);

INSERT INTO games
VALUES
(
  default,
  "Tom Clancy's End War",
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Red Dead Redemption',
  2011,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Titanfall',
  2014,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Resident Evil 5',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Chrome Hounds',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Batman: Arkham Asylum',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Elder Scrolls: Oblivion',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Naruto: Rise of a Ninja',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Fable II',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Grand Theft Auto VI',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Red Faction: Guerilla',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Battlefield 4',
  2007,
  3
);

INSERT INTO games
VALUES
(
  default,
  'Lost Odyssey',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Marvel Ultimate Alliance',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Forza 2 Motorsport',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Red Alert 3',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Injustice: Gods Among Us',
  2013,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Lost Planet: Extreme Edition',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Batman: Arkham City',
  2011,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Left 4 Dead 2',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Left 4 Dead',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Call of Duty MW3',
  2011,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Battlefield 3',
  2011,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Call of Duty: World at War',
  2007,
  2
);

INSERT INTO games
VALUES
(
  default,
  'Destiny',
  2011,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Borderlands',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Aliens vs. Predator',
  2010,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Dragon Age: Origins',
  2010,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Mass Effect',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'NHL 2K8',
  2007,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Call of Duty: Modern Warfare 2',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'The Godfather II',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Ultimate Alliance 2',
  2009,
  1
);

INSERT INTO games
VALUES
(
  default,
  "Assassin's Creed IV: Black Flag",
  2013,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Kengo: Legend of the 9',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Dead Rising',
  2006,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Rainbow Six Vegas 2',
  2008,
  1
);

INSERT INTO games
VALUES
(
  default,
  'Halo 3 ODST',
  2009,
  1
);

-- Accessories --

INSERT INTO accessories
VALUES
(
  1,
  1
);

INSERT INTO accessories
VALUES
(
  12,
  2
);

INSERT INTO accessories
VALUES
(
  14,
  2
);

INSERT INTO accessories
VALUES
(
  13,
  6
);

INSERT INTO accessories
VALUES
(
  15,
  4
);

INSERT INTO accessories
VALUES
(
  16,
  2
);

INSERT INTO accessories
VALUES
(
  17,
  1
);

INSERT INTO accessories
VALUES
(
  10,
  3
);

INSERT INTO accessories
VALUES
(
  11,
  3
);

-- Games Per Console --
-- Nintendo Switch --

INSERT INTO gamesByConsole
VALUES

( 10, 1 ),
( 10, 2 ),
( 10, 3 ),
( 10, 4 ),
( 10, 5 ),
( 10, 6 ),
( 10, 7 ),
( 10, 8 ),
( 10, 9 ),
( 10, 10 ),
( 10, 11 ),
( 10, 12 );

-- Nintendo Switch Lite --

INSERT INTO gamesByConsole
VALUES

( 11, 1 ),
( 11, 2 ),
( 11, 3 ),
( 11, 4 ),
( 11, 5 ),
( 11, 6 ),
( 11, 7 ),
( 11, 8 ),
( 11, 9 ),
( 11, 10 ),
( 11, 11 ),
( 11, 12 );

-- Gameboy Color --

INSERT INTO gamesByConsole
VALUES

( 3, 31 ),
( 3, 32 ),
( 3, 33 ),
( 3, 34 ),
( 3, 35 ),
( 3, 36 ),
( 3, 37 ),
( 3, 38 ),
( 3, 39 ),
( 3, 40 ),
( 3, 41 ),
( 3, 42 ),
( 3, 43 ),
( 3, 44 ),
( 3, 45 ),
( 3, 46 ),
( 3, 47 ),
( 3, 48 ),
( 3, 49 ),
( 3, 50 );

-- Gameboy Advance --

INSERT INTO gamesByConsole
VALUES
( 4, 31 ),
( 4, 32 ),
( 4, 33 ),
( 4, 34 ),
( 4, 35 ),
( 4, 36 ),
( 4, 37 ),
( 4, 38 ),
( 4, 39 ),
( 4, 40 ),
( 4, 41 ),
( 4, 42 ),
( 4, 43 ),
( 4, 44 ),
( 4, 45 ),
( 4, 46 ),
( 4, 47 ),
( 4, 48 ),
( 4, 49 ),
( 4, 50 );

INSERT INTO gamesByConsole
VALUES

( 4, 51 ),
( 4, 52 ),
( 4, 53 ),
( 4, 54 ),
( 4, 55 ),
( 4, 56 ),
( 4, 57 ),
( 4, 58 ),
( 4, 59 ),
( 4, 60 ),
( 4, 61 );

-- Gameboy Advance SP --

INSERT INTO gamesByConsole
VALUES
( 5, 31 ),
( 5, 32 ),
( 5, 33 ),
( 5, 34 ),
( 5, 35 ),
( 5, 36 ),
( 5, 37 ),
( 5, 38 ),
( 5, 39 ),
( 5, 40 ),
( 5, 41 ),
( 5, 42 ),
( 5, 43 ),
( 5, 44 ),
( 5, 45 ),
( 5, 46 ),
( 5, 47 ),
( 5, 48 ),
( 5, 49 ),
( 5, 50 );

INSERT INTO gamesByConsole
VALUES

( 5, 51 ),
( 5, 52 ),
( 5, 53 ),
( 5, 54 ),
( 5, 55 ),
( 5, 56 ),
( 5, 57 ),
( 5, 58 ),
( 5, 59 ),
( 5, 60 ),
( 5, 61 );

-- Nintendo DS Lite --

INSERT INTO gamesByConsole
VALUES

( 6, 22 ),
( 6, 23 ),
( 6, 24 ),
( 6, 25 ),
( 6, 26 ),
( 6, 27 ),
( 6, 28 ),
( 6, 29 ),
( 6, 30 );

INSERT INTO gamesByConsole
VALUES

( 6, 51 ),
( 6, 52 ),
( 6, 53 ),
( 6, 54 ),
( 6, 55 ),
( 6, 56 ),
( 6, 57 ),
( 6, 58 ),
( 6, 59 ),
( 6, 60 ),
( 6, 61 );

-- Nintendo DSi XL --

INSERT INTO gamesByConsole
VALUES

( 7, 22 ),
( 7, 23 ),
( 7, 24 ),
( 7, 25 ),
( 7, 26 ),
( 7, 27 ),
( 7, 28 ),
( 7, 29 ),
( 7, 30 );

-- Nintendo 3DS --

INSERT INTO gamesByConsole
VALUES

( 8, 22 ),
( 8, 23 ),
( 8, 24 ),
( 8, 25 ),
( 8, 26 ),
( 8, 27 ),
( 8, 28 ),
( 8, 29 ),
( 8, 30 );

INSERT INTO gamesByConsole
VALUES

( 8, 13 ),
( 8, 14 ),
( 8, 15 ),
( 8, 16 ),
( 8, 17 ),
( 8, 18 ),
( 8, 19 ),
( 8, 20 ),
( 8, 21 );

-- Nintendo 3DS XL --

INSERT INTO gamesByConsole
VALUES

( 9, 22 ),
( 9, 23 ),
( 9, 24 ),
( 9, 25 ),
( 9, 26 ),
( 9, 27 ),
( 9, 28 ),
( 9, 29 ),
( 9, 30 );

INSERT INTO gamesByConsole
VALUES

( 9, 13 ),
( 9, 14 ),
( 9, 15 ),
( 9, 16 ),
( 9, 17 ),
( 9, 18 ),
( 9, 19 ),
( 9, 20 ),
( 9, 21 );

-- Sega Genesis --

INSERT INTO gamesByConsole
VALUES

 ( 1, 62 ),
 ( 1, 63 ),
 ( 1, 64 ),
 ( 1, 65 ),
 ( 1, 66 ),
 ( 1, 67 ),
 ( 1, 68 ),
 ( 1, 69 ),
 ( 1, 70 ),
 ( 1, 71 );

-- Sega Pico --

INSERT INTO gamesByConsole
VALUES

 ( 2, 72 ),
 ( 2, 73 ),
 ( 2, 74 ),
 ( 2, 75 ),
 ( 2, 76 ),
 ( 2, 77 ),
 ( 2, 78 );

 -- Nintendo 64 --

INSERT INTO gamesByConsole
VALUES

 ( 12, 101 ),
 ( 12, 102 ),
 ( 12, 103 ),
 ( 12, 104 ),
 ( 12, 105 ),
 ( 12, 106 ),
 ( 12, 107 ),
 ( 12, 108 ),
 ( 12, 109 ),
 ( 12, 110 ),
 ( 12, 111 );

 -- Gamecube --

INSERT INTO gamesByConsole
VALUES

 ( 13, 112 ),
 ( 13, 113 ),
 ( 13, 114 ),
 ( 13, 115 ),
 ( 13, 116 ),
 ( 13, 117 ),
 ( 13, 118 ),
 ( 13, 119 ),
 ( 13, 121 ),
 ( 13, 122 ),
 ( 13, 123 ),
 ( 13, 124 ),
 ( 13, 125 ),
 ( 13, 126 ),
 ( 13, 127 ),
 ( 13, 128 ),
 ( 13, 129 ),
 ( 13, 130 ),
 ( 13, 131 ),
 ( 13, 132 ),
 ( 13, 133 ),
 ( 13, 134 ),
 ( 13, 135 ),
 ( 13, 136 ),
 ( 13, 137 ),
 ( 13, 138 ),
 ( 13, 139 ),
 ( 13, 140 ),
 ( 13, 141 );

 -- Wii --

INSERT INTO gamesByConsole
VALUES

 ( 14, 112 ),
 ( 14, 113 ),
 ( 14, 114 ),
 ( 14, 115 ),
 ( 14, 116 ),
 ( 14, 117 ),
 ( 14, 118 ),
 ( 14, 119 ),
 ( 14, 121 ),
 ( 14, 122 ),
 ( 14, 123 ),
 ( 14, 124 ),
 ( 14, 125 ),
 ( 14, 126 ),
 ( 14, 127 ),
 ( 14, 128 ),
 ( 14, 129 ),
 ( 14, 130 ),
 ( 14, 131 ),
 ( 14, 132 ),
 ( 14, 133 ),
 ( 14, 134 ),
 ( 14, 135 ),
 ( 14, 136 ),
 ( 14, 137 ),
 ( 14, 138 ),
 ( 14, 139 ),
 ( 14, 140 ),
 ( 14, 141 );

INSERT INTO gamesByConsole
VALUES

 ( 14, 142 ),
 ( 14, 143 ),
 ( 14, 144 ),
 ( 14, 145 ),
 ( 14, 146 ),
 ( 14, 147 ),
 ( 14, 148 ),
 ( 14, 149 );


-- XBox 360 --

INSERT INTO gamesByConsole
VALUES

 ( 15, 150 ),
 ( 15, 151 ),
 ( 15, 152 ),
 ( 15, 153 ),
 ( 15, 154 ),
 ( 15, 155 ),
 ( 15, 156 ),
 ( 15, 157 ),
 ( 15, 158 ),
 ( 15, 159 ),
 ( 15, 160 ),
 ( 15, 161 ),
 ( 15, 162 ),
 ( 15, 163 ),
 ( 15, 164 ),
 ( 15, 165 ),
 ( 15, 166 ),
 ( 15, 167 ),
 ( 15, 168 ),
 ( 15, 169 ),
 ( 15, 170 ),
 ( 15, 171 ),
 ( 15, 172 ),
 ( 15, 173 ),
 ( 15, 174 ),
 ( 15, 175 ),
 ( 15, 176 ),
 ( 15, 177 ),
 ( 15, 178 ),
 ( 15, 179 ),
 ( 15, 180 ),
 ( 15, 181 ),
 ( 15, 182 ),
 ( 15, 183 ),
 ( 15, 184 ),
 ( 15, 185 ),
 ( 15, 186 ),
 ( 15, 187 ),
 ( 15, 189 ),
 ( 15, 190 ),
 ( 15, 191 ),
 ( 15, 192 ),
 ( 15, 193 ),
 ( 15, 194 ),
 ( 15, 195 ),
 ( 15, 196 ),
 ( 15, 197 ),
 ( 15, 199 ),
 ( 15, 200 ),
 ( 15, 201 ),
 ( 15, 202 ),
 ( 15, 203 ),
 ( 15, 204 ),
 ( 15, 205 ),
 ( 15, 206 ),
 ( 15, 207 );

 -- Playstation 1 + 2 --

INSERT INTO gamesByConsole
VALUES

 ( 16, 79 ),
 ( 16, 80 ),
 ( 16, 81 ),
 ( 16, 82 ),
 ( 16, 83 ),
 ( 16, 84 ),
 ( 16, 85 ),
 ( 16, 86 );

  -- Playstation 4 --

INSERT INTO gamesByConsole
VALUES

 ( 17, 87 ),
 ( 17, 89 ),
 ( 17, 90 ),
 ( 17, 91 ),
 ( 17, 92 ),
 ( 17, 93 ),
 ( 17, 94 ),
 ( 17, 95 ),
 ( 17, 96 ),
 ( 17, 97 ),
 ( 17, 98 ),
 ( 17, 99 ),
 ( 17, 100 );






-- 3. 2 Select Statements --

-- What games were released before the year 2000?

SELECT *
FROM games
WHERE yearReleased < 2000
ORDER BY yearReleased;


-- What games were released after the year 2010?

SELECT *
FROM games
WHERE yearReleased > 2010
ORDER BY yearReleased;

-- 4. 2 Inner Join Statements --

-- What games can the Gameboy SP play?

SELECT gamesByConsole.consoleID, consoles.consoleName AS 'Console Name', gamesByConsole.gameID, games.gameName AS 'Game Name'
FROM gamesByConsole
INNER JOIN consoles
  ON gamesByConsole.consoleID = consoles.consoleID
INNER JOIN games
  ON  gamesByConsole.gameID = games.gameID
WHERE consoles.consoleName = "Nintendo Game Boy Advance SP";

-- Give the console name and the number of controllers each console has.

SELECT consoles.consoleName AS 'Console Name', accessories.numOfControllers AS 'Number of Controllers'
FROM accessories
INNER JOIN consoles
  ON accessories.consoleID = consoles.consoleID;

 -- 5.  2 Outer Join Statements --

-- What consoles do not have a controller?

SELECT consoles.consoleName AS 'Console Name', COALESCE(accessories.numOfControllers,'No Controllers') AS 'Number of Controllers'
FROM consoles
LEFT OUTER JOIN accessories
  ON consoles.consoleID = accessories.consoleID;

-- What games came out the year of the console release?

SELECT consoles.consoleName AS 'Console Name', consoles.yearReleased AS 'Console Year Released', games.gameName AS 'Game Name', games.yearReleased AS 'Games Year Released'
FROM consoles
RIGHT OUTER JOIN games
  ON consoles.yearReleased = games.yearReleased;

-- 6. Views --

CREATE VIEW consolesAndGames AS
SELECT gamesByConsole.consoleID, consoles.consoleName, consoles.yearReleased, gamesByConsole.gameID, games.gameName, games.yearReleased AS 'Games_Year_Released'
FROM gamesByConsole
INNER JOIN consoles
  ON gamesByConsole.consoleID = consoles.consoleID
INNER JOIN games
  ON  gamesByConsole.gameID = games.gameID;

CREATE VIEW consolesAndAccessories AS
SELECT consoles.consoleID, consoles.consoleName, consoles.yearReleased, consoles.consoleColor, COALESCE(accessories.numOfControllers,'No Controllers') AS 'num_ofControllers'
FROM consoles
LEFT OUTER JOIN accessories
  ON consoles.consoleID = accessories.consoleID;

-- 6.  2 View Queries --

--How many consoles do I have that are the color 'Black'?--
SELECT consoleID, consoleName, consoleColor, yearReleased
FROM consolesAndAccessories
WHERE consoleColor LIKE "%black";

-- I want all the information on consoles and the games they can play in one table. --
SELECT consolesAndGames.consoleID, consolesAndGames.consoleName, consolesAndGames.yearReleased, consoles.consoleColor, consolesAndAccessories.num_ofControllers, consolesAndGames.gameID, consolesAndGames.gameName, consolesAndGames.yearReleased
FROM consolesAndGames
INNER JOIN consolesAndAccessories
    ON consolesAndGames.consoleID = consolesAndAccessories.consoleID
INNER JOIN consoles
    ON consolesAndGames.consoleID = consoles.consoleID;

-- 7. 2 Built-In Functions --

--How many Xbox 360 games do I own?--
SELECT COUNT(gameName) AS 'Count of Xbox 360 Games'
FROM consolesAndGames
WHERE consoleID = 15;

-- What is the average yearReleased for the games that I own? --
SELECT ROUND(AVG(yearReleased))
FROM games;


-- 8. 2 Sub-queries --

-- What games can I play on the Nintendo 3DS system? --

SELECT gameName
FROM consolesAndGames
WHERE consoleID IN (SELECT consoleID FROM consoles WHERE consoleName LIKE 'Nintendo 3DS%');

-- What is the average of the yearReleased and where any games released that year? --

SELECT gameName, Games_Year_Released
FROM consolesAndGames
WHERE Games_Year_Released = (SELECT ROUND(AVG(yearReleased)) FROM games);

-- 9. 2 Group By Ststaments --

-- How many games do I have per console system? --
SELECT consoleName, COUNT(gameName)
FROM consolesAndGames
GROUP BY consoleName

-- How many games were released per year? --
SELECT YearReleased, COUNT(yearReleased)
FROM games
GROUP BY yearReleased;
