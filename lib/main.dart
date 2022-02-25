import 'package:flutter/material.dart';
import 'package:flutter_application_1/pantallas/ejemplos_listas.dart';
import 'package:flutter_application_1/pantallas/operaciones_matematicas.dart';
import 'package:flutter_application_1/widgets/favoritos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'prueba flutter',
      debugShowCheckedModeBanner: false, //retira el banner
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PrimerWidget(),
    );
  }
}

class PrimerWidget extends StatelessWidget {
  const PrimerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//menu
    return Scaffold(
      appBar: AppBar(
        title: Text('Taller App'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Image.asset(
                  'images/imagen1.jpg',
                  height: 100,
                ),
                Text('Menu')
              ],
            )),
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OperacionesMatematicas()));
                },
                icon: Icon(Icons.calculate),
                label: Text('Operaciones')),
            TextButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => EjemplosListas()));
                },
                icon: Icon(Icons.list),
                label: Text('Listas')),
          ],
        ),
      ),
//Vista secundaria de la interfaz (inico)
      body: LayoutBuilder(builder: (context, size) {
        return size.biggest.width > 600.0
            ? Row(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'images/imagen1.jpg',
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Texto 1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Texto 2',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Favoritos()
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.blue,
                              ),
                              Text(
                                'Texto 3',
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.blue,
                              ),
                              Text(
                                'Texto 4',
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.print,
                                color: Colors.blue,
                              ),
                              Text(
                                'Texto 5',
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'prueba numero 2',
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ))
                ],
              )
//Vista secundaria de la interfaz (fin)
//Vista principal de la interfaz (inicio)
            : Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.black,
                      child: Image.asset(
                        'images/imagen1.jpg',
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Texto 1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                'Texto 2',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Favoritos(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.phone,
                                color: Colors.amber,
                              ),
                              Text(
                                'Texto 3',
                                style: TextStyle(color: Colors.amber),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.email,
                                color: Colors.amber,
                              ),
                              Text(
                                'Texto 4',
                                style: TextStyle(color: Colors.amber),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.print, color: Colors.amber),
                              Text(
                                'Texto 5',
                                style: TextStyle(color: Colors.amber),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'prueba numero 3',
                          textAlign: TextAlign.justify,
                        ),
                      )
                    ],
                  ))
                ],
//Vista principal de la interfaz (fin)
              );
      }),
    );
  }
}
