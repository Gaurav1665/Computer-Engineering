import 'product_model.dart';

class ProductController {
  static List<ProductModel> products = [
    ProductModel(
      id: 1,
      name: 'Samsung Galaxy S21',
      price: 45999.0,
      imageURL: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=300',
      description: 'The Samsung Galaxy S21 is a flagship smartphone featuring a stunning 6.2-inch Dynamic AMOLED display with 120Hz refresh rate. It comes with a powerful Exynos 2100 processor, triple camera setup with 64MP telephoto lens, 12MP main camera, and 12MP ultrawide camera. The device offers 8GB RAM and 128GB storage, 5G connectivity, wireless charging, and runs on Android with Samsung One UI. Perfect for photography enthusiasts and power users who demand premium performance and cutting-edge features.',
    ),
    ProductModel(
      id: 2,
      name: 'Apple iPhone 13',
      price: 54999.0,
      imageURL: 'https://images.unsplash.com/photo-1592750475338-74b7b21085ab?w=300',
      description: 'The Apple iPhone 13 delivers exceptional performance with the A15 Bionic chip, featuring a 6.1-inch Super Retina XDR display. It boasts a dual-camera system with 12MP main and ultrawide cameras, offering incredible low-light photography and 4K video recording. With iOS ecosystem integration, Face ID security, MagSafe compatibility, and all-day battery life, this device is perfect for users who want seamless integration with Apple services and premium build quality. Available in multiple stunning colors.',
    ),
    ProductModel(
      id: 3,
      name: 'OnePlus 9 Pro',
      price: 42999.0,
      imageURL: 'https://images.unsplash.com/photo-1574944985070-8f3ebc6b79d2?w=300',
      description: 'The OnePlus 9 Pro offers flagship performance with Snapdragon 888 processor and 8GB RAM. Features a gorgeous 6.7-inch Fluid AMOLED display with 120Hz refresh rate, Hasselblad camera system with 48MP main sensor, 50MP ultrawide, 8MP telephoto, and 2MP monochrome cameras. Includes 65W Warp Charge fast charging, 50W wireless charging, and OxygenOS based on Android. Ideal for users who want premium features, smooth performance, and fast charging capabilities at a competitive price point.',
    ),
    ProductModel(
      id: 4,
      name: 'Xiaomi Mi 11',
      price: 38999.0,
      imageURL: 'https://images.unsplash.com/photo-1565849904461-04a58ad377e0?w=300',
      description: 'The Xiaomi Mi 11 combines flagship specifications with excellent value, powered by Snapdragon 888 chipset. It features a 6.81-inch AMOLED display with 120Hz refresh rate, triple camera setup with 108MP main camera, 13MP ultrawide, and 5MP macro cameras. Offers 8GB RAM, 128GB storage, 55W fast charging, 50W wireless charging, and MIUI based on Android. Perfect for users seeking flagship features, excellent camera performance, and fast charging at an affordable price with premium build quality.',
    ),
    ProductModel(
      id: 5,
      name: 'Google Pixel 6',
      price: 41999.0,
      imageURL: 'https://images.unsplash.com/photo-1602526430446-8f6fa7b8e325?w=300',
      description: 'The Google Pixel 6 showcases pure Android experience with Google Tensor chip and AI-powered features. Features a 6.4-inch OLED display with 90Hz refresh rate, exceptional dual camera system with 50MP main and 12MP ultrawide cameras powered by computational photography. Includes unlimited Google Photos storage, 5 years of security updates, Magic Eraser, Live Translate, and Call Screen features. Perfect for photography lovers, Android purists, and users who want the latest Google AI features with guaranteed timely updates.',
    ),
    ProductModel(
      id: 6,
      name: 'Vivo X60 Pro',
      price: 39999.0,
      imageURL: 'https://images.unsplash.com/photo-1580910051074-3eb694886505?w=300',
      description: 'The Vivo X60 Pro excels in mobile photography with ZEISS co-engineered cameras and gimbal stabilization. Features a 6.56-inch AMOLED curved display with 120Hz refresh rate, Snapdragon 870 processor, and professional-grade triple camera system with 48MP main, 13MP portrait, and 13MP ultrawide cameras. Includes 12GB RAM, 256GB storage, 33W fast charging, and Funtouch OS. Ideal for content creators, photography enthusiasts, and users who prioritize camera quality, smooth performance, and premium design aesthetics.',
    ),
  ];

  static List<CartItem> cartItems = [];

  static void addToCart(ProductModel product) {
    bool found = false;
    for (int i = 0; i < cartItems.length; i++) {
      if (cartItems[i].product.id == product.id) {
        cartItems[i].quantity = cartItems[i].quantity + 1;
        found = true;
        break;
      }
    }
    if (!found) {
      cartItems.add(CartItem(product: product, quantity: 1));
    }
  }

  static void removeFromCart(int productId) {
    cartItems.removeWhere((item) => item.product.id == productId);
  }

  static void increaseQuantity(int productId) {
    CartItem product = cartItems.firstWhere((element) => element.product.id == productId,);
    product.quantity += 1;
  }

  static void decreaseQuantity(int productId) {
    CartItem product = cartItems.firstWhere((element) => element.product.id == productId,);
    if(product.quantity > 1){
      product.quantity -= 1;
    } else{
      cartItems.remove(product);
    }
  }

  static double getTotalPrice() {
    double total = 0.0;
    for (int i = 0; i < cartItems.length; i++) {
      total = total + (cartItems[i].product.price * cartItems[i].quantity);
    }
    return total;
  }

  static int getCartItemCount() {
    int count = 0;
    for (int i = 0; i < cartItems.length; i++) {
      count = count + cartItems[i].quantity;
    }
    return count;
  }
}

class CartItem {
  ProductModel product;
  int quantity;

  CartItem({required this.product, required this.quantity});
}