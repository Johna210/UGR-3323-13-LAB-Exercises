fun main() {
	val beforeSorted: IntArray = intArrayOf(3, 2, 9, 4, 7, 0)
    val afterSorted = sortArray(beforeSorted)
    
    println(beforeSorted.contentToString())
    println(afterSorted.contentToString())
    
    var num: Int = 6
    var factorialOfSix = factorial(6)
    
    println(factorialOfSix)
    
    // Check if a string is unqiue
    println(checkUnique("abcc"))
}

fun sortArray(array: IntArray):IntArray {
    array.sort()
    return array
}

fun factorial(number: Int): Int {
    if(number <= 1) {
        return number
    }
    
    return factorial(number-1) + factorial(number-2)
}

fun checkUnique(word: String): Boolean{
    val charSet = mutableSetOf<Char>()
    for (char in word) {
       if (char in charSet) {
         return false
       }
       charSet.add(char)
     }
     return true
}



