fun main() {
    
    // season based on month and day enterd
    val month: Int = 3
    val day: Int = 25
    
    val season = when{
        month <= 3 && day <= 30 -> "Spring"
        month > 3 && month <= 6 && day <= 30 -> "Summer"
        month > 6 && month <= 9 && day <= 30 -> "Autumn"
        else -> "Winter"
    }
    
    println(season)
    
    // Largest among three numbers
    var a: Int = 2
    var b: Int = 3
    var c: Int = 4
    
    if (a > b && a > c) {
        println(a)
    } else if (b > a && b > c) {
        println(b)
    } else if (c > a && c > b) {
        println(c)
    }
    
    
}



