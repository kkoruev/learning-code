package src.week2.practice

object practice2 {
	
	def product(f: Int => Int)(a: Int, b: Int): Int =
		if(a > b) 1
		else f(a) * product(f)(a + 1, b)  //> product: (f: Int => Int)(a: Int, b: Int)Int
		
	def fact(n: Int): Int =
		product(x => x)(1, n)             //> fact: (n: Int)Int
		

	fact(5)                                   //> res0: Int = 120
}