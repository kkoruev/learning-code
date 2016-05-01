(defclass MAIN::%3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
   (is-a USER)
   (role abstract)
   (single-slot person_name
      (type STRING)
      (create-accessor read-write))
   (single-slot gamesSystem_Class4
      (type STRING)
      (create-accessor read-write))
   (single-slot name_
      (type STRING)
      (create-accessor read-write))
   (single-slot main_genre
      (type INSTANCE)
      (create-accessor read-write))
   (multislot suited_for_profession
      (type INSTANCE)
      (cardinality 1 3)
      (create-accessor read-write))
   (single-slot gender_preferences
      (type SYMBOL)
      (create-accessor read-write))
   (single-slot game_genre_by_profesison
      (type SYMBOL)
      (create-accessor read-write))
   (single-slot profession_type
      (type INSTANCE)
      (create-accessor read-write))
   (single-slot preferable_genre
      (type INSTANCE)
      (create-accessor read-write))
   (single-slot age
      (type INTEGER)
      (create-accessor read-write))
   (single-slot gender
      (type SYMBOL)
      (allowed-values male female)
      (create-accessor read-write))
   (single-slot genre
      (type STRING)
      (create-accessor read-write))
   (multislot genre_for_profession
      (type INSTANCE)
      (cardinality 0 2)
      (create-accessor read-write)))

(defclass MAIN::Person
   (is-a USER)
   (role concrete)
   (pattern-match reactive)
   (single-slot person_name
      (type STRING)
      (create-accessor read-write))
   (single-slot profession_type
      (type INSTANCE)
      (create-accessor read-write))
   (single-slot preferable_genre
      (type INSTANCE)
      (create-accessor read-write))
   (single-slot age
      (type INTEGER)
      (create-accessor read-write))
   (single-slot gender
      (type SYMBOL)
      (allowed-values male female)
      (create-accessor read-write)))

(defclass MAIN::Genre
   (is-a USER)
   (role abstract)
   (single-slot gender
      (type SYMBOL)
      (allowed-values male female)
      (create-accessor read-write)))

(defclass MAIN::Sport_Genre
   (is-a Genre)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Football
   (is-a Sport_Genre)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Rugby
   (is-a Sport_Genre)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Action_Genre
   (is-a Genre)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Shooter
   (is-a Action_Genre)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::RPG
   (is-a Action_Genre)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Horror
   (is-a Action_Genre)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Profession_Type
   (is-a USER)
   (role abstract)
   (multislot genre_for_profession
      (type INSTANCE)
      (cardinality 0 2)
      (create-accessor read-write)))

(defclass MAIN::Sport_Type
   (is-a Profession_Type)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Public_Services_Type
   (is-a Profession_Type)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Science_Type
   (is-a Profession_Type)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Medical_Type
   (is-a Profession_Type)
   (role concrete)
   (pattern-match reactive))

(defclass MAIN::Game
   (is-a USER)
   (role concrete)
   (pattern-match reactive)
   (single-slot main_genre
      (type INSTANCE)
      (create-accessor read-write))
   (multislot suited_for_profession
      (type INSTANCE)
      (cardinality 1 3)
      (create-accessor read-write))
   (single-slot name_
      (type STRING)
      (create-accessor read-write)))

(definstances MAIN::game
   ([gamesSystem_Class0] of Sport_Type
      (genre_for_profession [gamesSystem_Class10005] [gamesSystem_Class3]))
   ([gamesSystem_Class1] of Game
      (main_genre [gamesSystem_Class3])
      (name_ "Wow")
      (suited_for_profession [gamesSystem_Class0]))
   ([gamesSystem_Class10005] of RPG
      (gender male))
   ([gamesSystem_Class25] of Person
      (age 12)
      (gender male)
      (person_name "Chris")
      (preferable_genre [gamesSystem_Class10005])
      (profession_type [gamesSystem_Class0]))
   ([gamesSystem_Class3] of Football
      (gender male)))


(defrule generate_now
  (object (is-a Person) (preferable_genre ?genre))
  (object (is-a Genre)  (name ?genre))
  =>
  (printout t "The name is " ?genre:))
