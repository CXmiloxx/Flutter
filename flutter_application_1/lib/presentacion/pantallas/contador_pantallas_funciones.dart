import 'package:flutter/material.dart';

class ContadorPantallasFunciones extends StatefulWidget {
  const ContadorPantallasFunciones({super.key});

  @override
  State<ContadorPantallasFunciones> createState() =>
      _ContadorPantallasFuncionesState();
}

class _ContadorPantallasFuncionesState
    extends State<ContadorPantallasFunciones> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Contador Funciones'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$contador',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text("Click ${contador == 1 ? '' : 's'} ",
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  contador++;
                });
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                if (contador > 0) {
                  setState(() {
                    contador--;
                  });
                }
                
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
          ],
        ));
  }
}
