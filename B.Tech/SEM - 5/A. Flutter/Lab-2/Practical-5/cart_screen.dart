import 'package:flutter/material.dart';
import 'product_controller.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        backgroundColor: Colors.blue,
      ),
      body: ProductController.cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined,size: 100,color: Colors.grey,),
                  SizedBox(height: 16),
                  Text('Your cart is empty',style: TextStyle(fontSize: 18,color: Colors.grey,),),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: ProductController.cartItems.length,
                    itemBuilder: (context, index) {
                      CartItem cartItem = ProductController.cartItems[index];
                      return Card(
                        margin: EdgeInsets.all(8),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                child: Image.network(cartItem.product.imageURL,fit: BoxFit.cover,),
                              ),
                              SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(cartItem.product.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                                    SizedBox(height: 4),
                                    Text('₹${cartItem.product.price.toStringAsFixed(0)}',style: TextStyle(color: Colors.green,fontSize: 14,fontWeight: FontWeight.w600,),),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      ProductController.decreaseQuantity(cartItem.product.id);
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                  Text(cartItem.quantity.toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                                  IconButton(
                                    onPressed: () {
                                      ProductController.increaseQuantity(cartItem.product.id);
                                      setState(() {});
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  ProductController.removeFromCart(cartItem.product.id);
                                  setState(() {});
                                },
                                icon: Icon(Icons.delete, color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border(top: BorderSide(color: Colors.grey[300]!),),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total: ₹${ProductController.getTotalPrice()}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green,),),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Order Placed'),
                                content: Text('Your order has been placed successfully!'),
                                actions: [
                                  TextButton(
                                    onPressed: () {Navigator.of(context).pop();},
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text('Checkout'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}