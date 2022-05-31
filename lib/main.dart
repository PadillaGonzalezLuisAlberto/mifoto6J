import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Agregando bordes remaster'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                child: Container(
                  width: 365,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF54A40C),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'Luis Alberto Padilla González',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                indent: 120,
                endIndent: 120,
                color: Colors.black,
              ),
              Image.network(
                'https://raw.githubusercontent.com/PadillaGonzalezLuisAlberto/misimagenesdegithub/main/jejeholi.jpg',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              Divider(
                thickness: 5,
                indent: 120,
                endIndent: 120,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 40, 0, 0),
                child: Container(
                  width: 365,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color(0xFF54A40C),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      '6J. Programacion',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
