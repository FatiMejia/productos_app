import 'package:flutter/material.dart';

class ProductoCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.only(top: 30,bottom: 50),
        width: double.infinity,
        height: 400,
        //color: Color.fromARGB(255, 193, 110, 37),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0,7),
              blurRadius: 10,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            _BackgroudImage(),
            _DetallesProducto(),
            Positioned(
              top: 0,
              right: 0,
              child: _Precio(),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: _NoDisponible(),
            ),
          ],
        ),
      ),
    );
  }
}

class _BackgroudImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        width: double.infinity,
        height: 400,
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: AssetImage('assets/no-image.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _DetallesProducto extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 50),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 10),
        width: double.infinity,
        height: 70,
        //color: Color.fromARGB(255, 125, 60, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre del producto',
              style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'ID del producto',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 221, 183, 13),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}

class _Precio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 221, 183, 13),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: FittedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            '\$99.99',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class _NoDisponible extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.contain,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'No Disponible',
            style: TextStyle(
              color: Colors.white,
            fontSize: 20,
            ),
          ),
          ),
      ),
      width: 100,
      height: 70,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 74, 74),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )
      ),
    );
  }
}