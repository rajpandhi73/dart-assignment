class Product
{
  String name;
  double price;

  Product(this.name, this.price);

  void displayProduct()
  {
    print("Product: $name, Price: \$${price.toString}");
  }
}

class Cart
{
  final List<Product> _products = [];

  void addProduct(Product product)
  {
    _products.add(product);
    print("${product.name} added to the cart.");
  }

  double calculateTotal()
  {
    return _products.fold(0.0, (sum, product) => sum + product.price);
  }

  void displayCart()
  {
    if (_products.isEmpty)
    {
      print("Your cart is empty.");
      return;
    }
    print("Items in your cart:");
    for (var product in _products)
    {
      product.displayProduct();
    }
  }
}

class Order
{
  Cart cart;

  Order(this.cart);

  void placeOrder()
  {
    double total = cart.calculateTotal();
    if (total > 0)
    {
      print("Order placed successfully. Total Amount: \$${total.toString}");
    }
    else
    {
      print("Your cart is empty. Add items to place an order.");
    }
  }
}

void main()
{
  Product apple = Product("Apple", 1.5);
  Product bread = Product("Bread", 2.0);
  Product milk = Product("Milk", 3.0);

  Cart cart = Cart();

  cart.addProduct(apple);
  cart.addProduct(bread);
  cart.addProduct(milk);

  cart.displayCart();
  print("Total Price: \$${cart.calculateTotal().toString}");

  Order order = Order(cart);
  order.placeOrder();
}
