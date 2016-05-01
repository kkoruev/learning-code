; Tue Jan 26 23:13:22 EET 2016
; 
;+ (version "3.5")
;+ (build "Build 663")

(definstances game
([gamesSystem_Class0] of  Action_Genre
)

([gamesSystem_Class1] of  Sport_Genre
)

([gamesSystem_Class20004] of  Horror
)

([gamesSystem_Class20005] of  MMO
)

([gamesSystem_Class20006] of  RPG
)

([gamesSystem_Class20007] of  Shooter
)

([gamesSystem_Class20008] of  Basketball
)

([gamesSystem_Class20009] of  Football
)

([gamesSystem_Class20010] of  Sport_Strategy
)

([gamesSystem_Class20011] of  Volleyball
)

([gamesSystem_Class20017] of  Medical_Type

	(genre_for_profession [gamesSystem_Class20004]))

([gamesSystem_Class20018] of  Public_Services_Type

	(genre_for_profession
		[gamesSystem_Class20004]
		[gamesSystem_Class20008]))

([gamesSystem_Class20019] of  Science_Type

	(genre_for_profession
		[gamesSystem_Class3]
		[gamesSystem_Class20010]))

([gamesSystem_Class20020] of  Sport_Type

	(genre_for_profession [gamesSystem_Class20008]))

([gamesSystem_Class20022] of  Game

	(main_genre [gamesSystem_Class20009])
	(min_age 5)
	(name_ "Fifa 16")
	(secondary_genre [gamesSystem_Class1]))

([gamesSystem_Class20023] of  Game

	(main_genre [gamesSystem_Class20007])
	(min_age 12)
	(name_ "Doom")
	(secondary_genre [gamesSystem_Class0]))

([gamesSystem_Class20024] of  Game

	(main_genre [gamesSystem_Class20008])
	(min_age 5)
	(name_ "NBA 16")
	(secondary_genre [gamesSystem_Class1]))

([gamesSystem_Class20027] of  Game

	(main_genre [gamesSystem_Class20011])
	(min_age 5)
	(name_ "Euro Volley 2016")
	(secondary_genre [gamesSystem_Class1]))

([gamesSystem_Class20028] of  Game

	(main_genre [gamesSystem_Class20009])
	(min_age 8)
	(name_ "Football Manager 2016")
	(secondary_genre [gamesSystem_Class20010]))

([gamesSystem_Class20030] of  Game

	(main_genre [gamesSystem_Class20006])
	(min_age 12)
	(name_ "WOW")
	(secondary_genre [gamesSystem_Class3]))

([gamesSystem_Class20031] of  Game

	(main_genre [gamesSystem_Class20005])
	(min_age 12)
	(name_ "Heroes of Newearth")
	(secondary_genre [gamesSystem_Class0]))

([gamesSystem_Class20032] of  Game

	(main_genre [gamesSystem_Class20004])
	(min_age 16)
	(name_ "F.E.A.R")
	(secondary_genre [gamesSystem_Class20007]))

([gamesSystem_Class20033] of  Game

	(main_genre [gamesSystem_Class3])
	(min_age 14)
	(name_ "Age of Empires")
	(secondary_genre [gamesSystem_Class0]))

([gamesSystem_Class20034] of  Game

	(main_genre [gamesSystem_Class1])
	(min_age 16)
	(name_ "Big Brawl")
	(secondary_genre [gamesSystem_Class0]))

([gamesSystem_Class20035] of  Game

	(main_genre [gamesSystem_Class1])
	(min_age 12)
	(name_ "WWE 2k16")
	(secondary_genre [gamesSystem_Class0]))

([gamesSystem_Class3] of  Action_Strategy
)
)
