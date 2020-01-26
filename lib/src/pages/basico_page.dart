import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey );



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          
        
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {

    return Image(
      image: NetworkImage('http://www.tierratravels.com/travelblog/wp-content/uploads/2013/09/Sunset-over-Milford-Sound.jpg'),
    );

  }

  Widget _crearTitulo() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Lago con cielo estrellado', style: estiloTitulo ),
                  SizedBox(height: 3.0),
                  Text('Lago con cielo en Rusia', style: estiloSubTitulo ),
                ],
              ),
            ),

            Icon( Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle( fontSize: 20.0) )

          ],
        ),
      ),
    );

  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion('CALL', Icons.call ),        
        _accion('ROUTE', Icons.near_me ),            
        _accion('SHARE', Icons.share),          
        
      ],
    );

  }

  Widget _accion( String text,IconData icon ) {

    return Column(
        children: <Widget>[
          Icon( icon , color: Colors.blue, size: 35.0 ),
          SizedBox(height: 7.0),
          Text( text, style: TextStyle(color: Colors.lightBlue, fontSize: 15.0 ))
        ],
    );

  }

  Widget _crearTexto() {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Qui ut magna sint deserunt qui amet elit qui laborum. In amet sunt laborum esse voluptate labore eiusmod. Aute est non ipsum ex culpa mollit est cupidatat.',
        textAlign: TextAlign.justify,
      ),
    );

  }
 

}