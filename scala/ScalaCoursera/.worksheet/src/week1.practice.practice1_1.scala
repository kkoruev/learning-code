package week1.practice

import scala.annotation.tailrec

object practice1_1 {;import org.scalaide.worksheet.runtime.library.WorksheetSupport._; def main(args: Array[String])=$execute{;$skip(283); 
	
	val block = {
		
		def factorial(n: Int): Int = {
		
			@tailrec
			def loop(n: Int, result: Int): Int =
				if(n == 0) result
				else loop(n - 1, result * n)
			
			loop(n, 1)
		}
		
		factorial(4)
	};System.out.println("""block  : Int = """ + $show(block ));$skip(7); val res$0 = 
	block;System.out.println("""res0: Int = """ + $show(res$0))}
}
