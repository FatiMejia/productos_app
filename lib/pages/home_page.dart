import 'package:flutter/material.dart';
import 'package:productos_app/widgets/producto_card.dart';

class HomePage extends StatelessWidget {
  //const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Productos'),
        ),
      body: ListView.builder(
        itemCount: 10, 
        itemBuilder:(BuildContext context, int index) => 
          GestureDetector(
            onTap: (() => Navigator.pushNamed(context, 'producto')),
            child: ProductoCard()
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}