import 'package:flutter/material.dart';
import 'package:productos_app/widgets/imagen_producto.dart'; 

class ProductoPage extends StatelessWidget {
  const ProductoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    ImagenProducto(),
                    Positioned(
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () => 
                        Navigator.of(context).pop(),
                      ),
                      top: 60,
                      left: 20,
                    ),
                    Positioned(
                      child: IconButton(
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        onPressed: () {}
                      ),
                      top: 60,
                      right: 20,
                    ),
                  ],
                ),
                _ProductoForm(),
                SizedBox(height: 100,)
              ],
            ),
          ),
        )
    );
  }
}


class _ProductoForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 5,
              offset: Offset(0,5),
            ),
          ],
        ),
      ),
    );
  }
}