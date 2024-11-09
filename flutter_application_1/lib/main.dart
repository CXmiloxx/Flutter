import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentacion/config/app_tema.dart';

import 'package:flutter_application_1/presentacion/pantallas/contador_pantallas_funciones.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contador de Pantallas',
      theme: AppTema().theme(),

      home: const ContadorPantallasFunciones()
    );
  }
}
