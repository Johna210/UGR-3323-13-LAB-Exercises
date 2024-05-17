fun main() {
    
    var tri = triangle(2,3,5)
    println(tri)
    
    // Calculate Salary
    var hourlyRate: Double = 55.5
    var hoursWorked: Int = 5
    var overTime: Int = 1
    
    val totalSalary = (hourlyRate * hoursWorked) + (overTime * hourlyRate)
    println(totalSalary)
    
}

fun triangle(a: Number, b: Number, c: Number) : String {
    if (a == b && b == c) {
        return "Equilateral"
    } else if (a != b && b != c && a != c){
        return "Scalene"
    } else {
        return "Isoceles"
    }
}

