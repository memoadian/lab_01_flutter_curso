import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        accentColor: Colors.orangeAccent
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mi primera app'),
        ),
        body: Center(
          /*
            usamos un contenedor center para centrar nuestra card
            También podemos usar otros elementos como Container
            alignment: Alignment.center,
          */
          child: Column (//aplicamos el mismo concepto que con la imagen y el texto
            mainAxisSize: MainAxisSize.min,//definimos la minima altura
            children: <Widget> [//definimos el array para la card y el button
              Card (//definimos nuestra instancia de una Card
                elevation: 4.0,//definimos una elevación con un número flotante
                child: Container(//definimos un contenedor para poder colocar un padding
                  padding: EdgeInsets.all(10.0),//colocamos un padding de 10
                  //child: Text("Este es el texto de mi card")
                  //comentamos el child Text porque necesitamos colocar más de un elemento hijo
                  child: Column(//colocamos una columna para poder contener más elementos hijos
                    mainAxisSize: MainAxisSize.min,//definimos la altura minima para no llenar toda la pantalla
                    children: <Widget>[//definimos el array de widgets
                      Image.asset('images/logo_flutter.png'),//colocamos la imagen
                      Text("Logo de flutter")//y el texto
                      /*
                        * estos elementos pueden estar dentro de un Container para facilitar el
                        * espaciado con padding
                      */
                    ],
                  )
                ),
              ),
              RaisedButton(//definimos el botón
                color: Colors.lime,//definimos el color
                textColor: Colors.black,//color de texto
                splashColor: Colors.orangeAccent,//el color del efecto wave al presionar el botón
                child: Text("Flutter"),//el child directo lo definimos como texto
                onPressed: () {},//si no colocamos esta propiedad el botón se verá gris
              )
            ]
          ),
        ),
      ),
    );
  }
}