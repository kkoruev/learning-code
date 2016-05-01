(defrule fill-account-info (declare (salience 1000))
  ?init <- (initial-fact)
=>
  (make-instance user of Person)
  (bind ?name (ask-question "Enter your name: "))
  (send [user] put-person_name ?name)
  (bind ?age (ask-for-number "Enter your age: "))
  (send [user] put-age ?age)
  (bind ?gender (ask-multiple-choice-question "Enter gender (Male/Female): " Male Female))
  (send [user] put-gender ?gender)
  (bind ?preferable_genre (ask-multiple-choice-question "Choose your preferable game genre(Horror/MMO/RPG/Shooter/Basketball/Football/Sport_strategy/Volleyball/Action_Strategy) :" Horror MMO RPG Shooter Basketball Football Sport_Strategy Volleyball Action_Strategy))
  (send [user] put-preferable_genre (make-instance-of-genre ?preferable_genre))
  (bind ?profession_type (ask-multiple-choice-question "Choose your occupation or the closest to yours(Medical_Type/Public_Services_Type/Science_Type/Sport_Type) :" Medical_Type Public_Services_Type Science_Type Sport_Type))
  (send [user] put-profession_type ?profession_type))


(defrule add-games-over-age
  (object (is-a Game) (name_ ?name) (main_genre ?main_genre) (min_age ?age))
=>
  (assert-it ?name ?main_genre ?age))
    
(deffunction assert-it (?name ?main_genre ?age)
  (bind ?genre (class ?main_genre))
  (if(<= ?age (send [user] get-age))
    then
    (assert (user age ?name ?genre))
  else 
  (printout t "Removing not suitable games" crlf))
)

(defrule test-rule
  (user age)
=>
  (printout t "S"))


(deffunction find-all-over-age()
  (bind ?list (find-all-instances ((?game Game)) (<= ?game:min_age (send [user] get-age))))
  ?list)

(deffunction make-instance-of-genre(?preferable_genre)
  (make-instance of ?preferable_genre))

(deffunction ask-multiple-choice-question (?question $?possible-values)
  (printout t ?question crlf)
  (bind ?answer (read))
  (while (not (member ?answer ?possible-values)) do
    (printout t ?question crlf)
    (bind ?answer (read))
  )
  ?answer)

(deffunction ask-for-number (?question)
  (printout t ?question crlf)
  (bind ?answer (read))
  (while (not (numberp ?answer)) do
    (printout t ?question crlf)
    (bind ?answer (read))
  )
  ?answer) 

(deffunction ask-question (?question)
  (printout t ?question crlf)
  (bind ?answer (read))
  (while (not (lexemep ?answer)) do
    (printout t ?question crlf)
    (bind ?answer (read))
  )
  ?answer)
