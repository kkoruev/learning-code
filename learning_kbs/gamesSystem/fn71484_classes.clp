; Tue Jan 26 18:27:50 EET 2016
; 
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot name_
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot secondary_genre
		(type INSTANCE)
;+		(allowed-classes Genre)
		(cardinality 1 3)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot genre_for_profession
		(type INSTANCE)
;+		(allowed-classes Genre)
		(cardinality 0 2)
		(create-accessor read-write))
	(single-slot person_name
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gamesSystem_Class4
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot type
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot min_age
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot main_genre
		(type INSTANCE)
;+		(allowed-classes Genre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gender_preferences
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot game_genre_by_profesison
		(type SYMBOL)
;+		(allowed-parents Genre)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot profession_type
		(type INSTANCE)
;+		(allowed-classes Profession_Type)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot preferable_genre
		(type INSTANCE)
;+		(allowed-classes Genre)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot gender
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot genre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Genre
	(is-a USER)
	(role abstract))

(defclass Sport_Genre
	(is-a Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Football
	(is-a Sport_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Volleyball
	(is-a Sport_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Basketball
	(is-a Sport_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Sport_Strategy
	(is-a Sport_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Action_Genre
	(is-a Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Horror
	(is-a Action_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass RPG
	(is-a Action_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass MMO
	(is-a Action_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Shooter
	(is-a Action_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Action_Strategy
	(is-a Action_Genre)
	(role concrete)
  (pattern-match reactive))

(defclass Profession_Type
	(is-a USER)
	(role abstract)
	(multislot genre_for_profession
		(type INSTANCE)
;+		(allowed-classes Genre)
		(cardinality 0 2)
		(create-accessor read-write)))

(defclass Sport_Type
	(is-a Profession_Type)
	(role concrete)
  (pattern-match reactive))

(defclass Public_Services_Type
	(is-a Profession_Type)
	(role concrete)
  (pattern-match reactive))

(defclass Science_Type
	(is-a Profession_Type)
	(role concrete)
  (pattern-match reactive))

(defclass Medical_Type
	(is-a Profession_Type)
	(role concrete)
  (pattern-match reactive))

(defclass Game
	(is-a USER)
	(role concrete)
  (pattern-match reactive)
	(single-slot min_age
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot main_genre
		(type INSTANCE)
;+		(allowed-classes Genre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot name_
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot secondary_genre
		(type INSTANCE)
;+		(allowed-classes Genre)
		(cardinality 1 3)
		(create-accessor read-write)))

(defclass Person
	(is-a USER)
	(role concrete)
  (pattern-match reactive)
	(single-slot person_name
		(type STRING)
;+		(cardinality 1 1)
    (create-accessor read-write))
  (single-slot profession_type
    (type SYMBOL) 
    (allowed-values Medical_Type Public_Services_Type Science_Type Sport_Type)
;+    (cardinality 0 1)
    (create-accessor read-write))
	(single-slot preferable_genre
		(type INSTANCE)
;+		(allowed-classes Genre)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot age
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot gender
		(type SYMBOL)
		(allowed-values male female)
;+		(cardinality 0 1)
		(create-accessor read-write)))
