(ns hobbit-hit.core
  (:gen-class))

(def asym-hobbit-body-parts [{:name "head" :size 3}
                             {:name "left-eye" :size 1}
                             {:name "left foot" :size 2}
                             {:name "left lung" :size 4}
                             {:name "heart" :size 4}])

(defn test_func
  []
  (println "This is a test"))

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (test_func))

(defn matching-part
  [part]
  {:name (clojure.string/replace (:name part) #"^left-" "right-")
   :size (:size part)})

(matching-part asym-hobbit-body-parts)

