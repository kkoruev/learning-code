package recfun
import common._

object Main {
  def main(args: Array[String]) {
    println("Pascal's Triangle")
    for (row <- 0 to 10) {
      for (col <- 0 to row)
        print(pascal(col, row) + " ")
      println()
    }
  }

  /**
   * Exercise 1
   */
  def pascal(c: Int, r: Int): Int = {
    
    def generateArray(r: Int, currentArray: Array[Int]): Array[Int] = 
      if(r > 0) generateArray(r - 1, accFunc(Array[Int](), currentArray))
      else currentArray
    
    def accFunc(accArr: Array[Int], arrNum: Array[Int]): Array[Int] = 
      if(arrNum.length == 1) 1 +: accArr :+ 1
      else accFunc(accArr :+ (arrNum.head + arrNum.tail.head), arrNum.tail)
    
    generateArray(r, Array(1))(c)
  }

  /**
   * Exercise 2
   */
  def balance(chars: List[Char]): Boolean = ???

  /**
   * Exercise 3
   */
  def countChange(money: Int, coins: List[Int]): Int = ???
}
