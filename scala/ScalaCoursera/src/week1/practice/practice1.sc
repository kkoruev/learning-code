  def isGoodEnough(guess: Double, x: Double): Boolean =
    if(guess < x) true
    else false

  def improve(guess: Double, x: Double): Double =
    guess - 1.0

  def sqrtIter(guess: Double, x: Double): Double =
    if (isGoodEnough(guess, x)) guess
    else sqrtIter(improve(guess, x), x)

  sqrtIter(2, 5)
  sqrtIter(1, 4)
