fun main() {
	// find the sum of all evens from 1 to 50
    var totalEvenSum: Int = 0
    
    for (i in 1..51){
        if (i % 2 == 0) {
            totalEvenSum += i
        }
    }
    
    println(totalEvenSum)
	
    // prime numbers within a given range
    var leftBound: Int = 2
    var rightBound: Int = 50
    
    var answers: MutableList<Int> = mutableListOf()
    
    while (leftBound < rightBound + 1){
        if (isPrime(leftBound)) {
            answers.add(leftBound)
        }
        leftBound += 1
    }
    
    println(answers)
    
    // check if palindrome
    var word: String = "racecar"
    println(isPalindrome(word))
    
    
}

fun isPalindrome(word: String): Boolean {
    var left = 0
    var right = word.count() - 1
    
    while (left < right) {
        if(word[left] != word[right]) {
            return false
        }
        left += 1
        right -= 1
    }
    
    return true
}

fun isPrime(number: Int): Boolean {
    if (number <= 1) return false
    if (number == 2 || number == 3) return true
    if (number % 2 == 0 || number % 3 == 0) return false
    var i = 5
    while (i * i <= number) {
        if (number % i == 0 || number % (i + 2) == 0) return false
        i += 6
    }
    return true
    
}