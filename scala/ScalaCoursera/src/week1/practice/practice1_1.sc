package week1.practice

import scala.annotation.tailrec

object practice1_1 {
	
	val block = {
		
		def factorial(n: Int): Int = {
		
			@tailrec
			def loop(n: Int, result: Int): Int =
				if(n == 0) result
				else loop(n - 1, result * n)
			
			loop(n, 1)
		}
		
		factorial(4)
	}                                         //> block  : Int = 24
	block                                     //> res0: Int = 24
}