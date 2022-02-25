import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/grid_vista.dart';

class EjemplosListas extends StatelessWidget {
  const EjemplosListas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo de lista'),
      ),
      body: GridVista(),
    );
  }
}
