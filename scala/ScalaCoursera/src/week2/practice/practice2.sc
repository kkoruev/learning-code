package src.week2.practice

object practice2 {

	def mapReduce(f: Int => Int, combine: (Int, Int) => Int, default: Int)(a: Int, b: Int): Int =
		if(a > b) default
		else combine(f(a), mapReduce(f, combine, default)(a + 1, b))
                                                  //> mapReduce: (f: Int => Int, combine: (Int, Int) => Int, default: Int)(a: Int,
                                                  //|  b: Int)Int
	
	def product(f: Int => Int)(a: Int, b: Int): Int =
		if(a > b) 1
		else f(a) * product(f)(a + 1, b)  //> product: (f: Int => Int)(a: Int, b: Int)Int
		
	def fact(n: Int): Int =
		product(x => x)(1, n)             //> fact: (n: Int)Int
	
	def sum(a: Int, b: Int): Int =
		mapReduce(x => x, (x, y) => x + y, 0)(a, b)
                                                  //> sum: (a: Int, b: Int)Int
		
	sum(1, 5)                                 //> res0: Int = 15
	
	
	
}