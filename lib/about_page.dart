import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Color(0xFFAFB42B),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('USO DE RUTAS')],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            heroTag: 'btnS',
            child: Text('PAG1'),
            onPressed: () {
              Navigator.pushNamed(context, 'services');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'btnT',
            child: Text('PAG2'),
            onPressed: () {
              Navigator.pushNamed(context, 'team');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: 'btnP',
            child: Text('PAG3'),
            onPressed: () {
              Navigator.pushNamed(context, 'profile');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFFFF1744),
            heroTag: 'btnE',
            child: Text('PAG4'),
            onPressed: () {
              Navigator.pushNamed(context, 'nothing');
            },
          ),
          SizedBox(
            width:15
          ),
          FloatingActionButton(
            backgroundColor: Color(0xFF0037FF),
            heroTag: 'btnH',
            child: Text('INICIO'),
              onPressed: () {
            Navigator.pushNamed(context, 'home');
            },
          ),
        ],
      ),
    );
  }
}
