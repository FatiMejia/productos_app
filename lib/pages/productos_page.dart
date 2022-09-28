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
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.save_outlined
          ),
          onPressed: () {},
        ),
    );
  }
}


class _ProductoForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        //height: 200,
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
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nombre del Producto',
                  labelText: 'Nombre del Producto',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 2, 226, 255),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 2, 226, 255),
                      width: 2,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 8, 3, 156),
                  ),
                ),
              ),
              SizedBox(height: 15,),
               TextFormField(
                decoration: InputDecoration(
                  hintText: '\$99.99',
                  labelText: 'Precio',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 2, 226, 255),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 2, 226, 255),
                      width: 2,
                    ),
                  ),
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 8, 3, 156),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              SwitchListTile(
                value: true,
                title: Text('Disponible'),
                activeColor: Color.fromARGB(255, 0, 21, 254),
                onChanged: (value) {},
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}