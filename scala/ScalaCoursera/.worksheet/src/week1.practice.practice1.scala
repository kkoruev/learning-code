package week1.practice

object practice1{;import org.scalaide.worksheet.runtime.library.WorksheetSupport._; def main(args: Array[String])=$execute{;$skip(95); 

	def abs(x: Double): Double =
	  if(x > 0) x else -x;System.out.println("""abs: (x: Double)Double""");$skip(105); 
	
	def isGoodEnough(guess: Double, x: Double): Boolean =
	  (abs(guess * guess - x)) < 0.000000000000001;System.out.println("""isGoodEnough: (guess: Double, x: Double)Boolean""");$skip(78); 
	
	def improve(guess: Double, x: Double): Double =
	  (guess + x / guess) / 2;System.out.println("""improve: (guess: Double, x: Double)Double""");$skip(128); 
	
	def sqrtIter(guess: Double, x: Double): Double =
	  if (isGoodEnough(guess, x)) guess
	  else sqrtIter(improve(guess, x), x);System.out.println("""sqrtIter: (guess: Double, x: Double)Double""");$skip(53); 
	
	def sqrt(x: Double): Double =
	  sqrtIter(1.0, x);System.out.println("""sqrt: (x: Double)Double""");$skip(11); val res$0 = 
	
	sqrt(4);System.out.println("""res0: Double = """ + $show(res$0))}
}
