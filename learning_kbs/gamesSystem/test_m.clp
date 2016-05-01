(defrule generate (declare (salience 10000))
  (object (is-a Person) (name_object ?person_name))
  (object (is-a Alcoholic|NonAlcoholic) (name_object ?beverage_name))
  (object (is-a Season) (season ?s))
=>
  (assert (posible (person_name ?person_name) (beverage_name ?beverage_name) (season ?s)))
)
