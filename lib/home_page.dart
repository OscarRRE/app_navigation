import 'package:app_navigation/about_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xD51100FF),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Color(0xFFB60C0C),
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (context) {
              return AboutPage();
            },
          );
          Navigator.push(context, ruta);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Aqui usamos la navegación directa'),
            Text('Tap en el botón'),
          ],
        ),
      ),
    );
  }
}
