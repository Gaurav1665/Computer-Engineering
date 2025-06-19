import 'package:flutter/material.dart';
import 'product_model.dart';
import 'product_controller.dart';
import 'cart_screen.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductModel product;

  ProductDetailScreen({required this.product});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => CartScreen()),).then((value) {setState(() {});});
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(widget.product.imageURL,fit: BoxFit.cover,),
            ),
            SizedBox(height: 16),
            Text(widget.product.name,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
            SizedBox(height: 8),
            Text('₹${widget.product.price}',style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.w600,),),
            SizedBox(height: 16),
            Text('Description:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
            SizedBox(height: 8),
            Text(widget.product.description,style: TextStyle(fontSize: 16),),
            SizedBox(height: 24),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ProductController.addToCart(widget.product);
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${widget.product.name} added to cart'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: Text('Add to Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}