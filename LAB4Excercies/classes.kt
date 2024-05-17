fun main() {
    var rect: Rectangle = Rectangle(2,3)
    println(rect.perimeter())
    println(rect.area())
    
    var tri: Triangle = Triangle(2,3,6)
    println(tri.isEquilateral())
    
    var cart: ShoppingCart = ShoppingCart()
    cart.addItem(Item("Apple",2.50))
    cart.addItem(Item("Orange",3.50))
    println(cart.listItems())
    println(cart.totalPrice())
    
}

class Rectangle(val length: Int, val width: Int) {
    fun perimeter(): Int{
        return 2 *(length + width)
    }
    
    fun area(): Int {
        return length * width
    }
}

class Triangle(val sideA: Int, val sideB: Int, val sideC: Int) {

    fun isEquilateral(): Boolean {
        return sideA == sideB && sideB == sideC
    }

    fun isIsosceles(): Boolean {
        return sideA == sideB || sideB == sideC || sideA == sideC
    }

    fun isScalene(): Boolean {
        return sideA != sideB && sideB != sideC && sideA != sideC
    }
}

data class Item(val name: String, val price: Double)

class ShoppingCart {
    private val items: MutableList<Item> = mutableListOf()

    fun addItem(item: Item) {
        items.add(item)
    }

    fun removeItem(item: Item): Boolean {
        return items.remove(item)
    }

    fun totalPrice(): Double {
        return items.sumByDouble { it.price }
    }

    fun listItems(): List<Item> {
        return items.toList()
    }
}