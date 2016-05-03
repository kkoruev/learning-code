package week1.practice

object practice1{

	def abs(x: Double): Double =
	  if(x > 0) x else -x                     //> abs: (x: Double)Double
	
	def isGoodEnough(guess: Double, x: Double): Boolean =
	  (abs(guess * guess - x)) < 0.000000000000001
                                                  //> isGoodEnough: (guess: Double, x: Double)Boolean
	
	def improve(guess: Double, x: Double): Double =
	  (guess + x / guess) / 2                 //> improve: (guess: Double, x: Double)Double
	
	def sqrtIter(guess: Double, x: Double): Double =
	  if (isGoodEnough(guess, x)) guess
	  else sqrtIter(improve(guess, x), x)     //> sqrtIter: (guess: Double, x: Double)Double
	
	def sqrt(x: Double): Double =
	  sqrtIter(1.0, x)                        //> sqrt: (x: Double)Double
	
	sqrt(6)                                   //> res0: Double = 2.449489742783178
}