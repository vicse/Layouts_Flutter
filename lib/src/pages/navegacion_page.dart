import 'package:flutter/material.dart';

class NavegacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(52, 54, 101, 1.0),
              Color.fromRGBO(35, 37, 57, 1.0)
            ]
          )
        ),
     
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _crearBotonNavegacion(context, 'Página 1', 'basico'),
              _crearBotonNavegacion(context, 'Página 2', 'scroll'),
              _crearBotonNavegacion(context, 'Página 3', 'botones'),                          

            ],
          ),
        ),
        
      ),
    );
  }

  Widget _crearBotonNavegacion(BuildContext context, String texto, String ruta) {

    return RaisedButton(
      shape: StadiumBorder(),
      color: Colors.blue,
      textColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0 ),
        child: Text( texto, style: TextStyle(fontSize: 20.0 )),
      ),
      onPressed: (){
        Navigator.pushNamed(context, ruta);
      },          
    );

  }
}