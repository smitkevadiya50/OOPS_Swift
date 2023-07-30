/*
In this example, productId, productName, and productPrice are encapsulated inside the Product class. 
We can interact with these properties using the provided methods such as calculateDiscountedPrice() and displayProductDetails(). 
This follows the principle of encapsulation as the actual data is hidden and only accessible via methods of the current class.
*/

class Product {
    // Private properties
    private var productId: Int
    private var productName: String
    private var productPrice: Double
    
    // Initializer
    init(productId: Int, productName: String, productPrice: Double) {
        self.productId = productId
        self.productName = productName
        self.productPrice = productPrice
    }
    
    // Public method to calculate discounted price
    public func calculateDiscountedPrice(discountPercent: Double) -> Double {
        // Check if discount percent is valid
        if discountPercent > 0 && discountPercent < 100 {
            return productPrice - (productPrice * (discountPercent / 100))
        } else {
            print("Invalid discount percent.")
            return productPrice
        }
    }
    
    // Public method to display product details
    public func displayProductDetails() {
        print("Product Id: \(productId)")
        print("Product Name: \(productName)")
        print("Product Price: \(productPrice)")
    }
}
// Create product instances
let product1 = Product(productId: 1, productName: "iPhone 13", productPrice: 999.99)
let product2 = Product(productId: 2, productName: "MacBook Pro", productPrice: 2499.99)

// Display product1 details
print("Product 1 Details:")
product1.displayProductDetails()
// Calculate and print discounted price with a 10% discount
let discountedPrice1 = product1.calculateDiscountedPrice(discountPercent: 10)
print("Product 1 Discounted Price: \(discountedPrice1)")
print("")

// Display product2 details
print("Product 2 Details:")
product2.displayProductDetails()
// Calculate and print discounted price with a 15% discount
let discountedPrice2 = product2.calculateDiscountedPrice(discountPercent: 15)
print("Product 2 Discounted Price: \(discountedPrice2)")

/*
Output:

Product 1 Details:
Product Id: 1
Product Name: iPhone 13
Product Price: 999.99
Product 1 Discounted Price: 899.991

Product 2 Details:
Product Id: 2
Product Name: MacBook Pro
Product Price: 2499.99
Product 2 Discounted Price: 2124.9914
*/
