import 'package:flutter/material.dart';
import '../../../dominio/entidades/mensajes.dart';

class ChatProviders extends ChangeNotifier{
  List<Mensaje> mensajesLista = [
    Mensaje(text: 'hola, que más ', deQuien: DeQuien.mio),
    Mensaje(text: 'como estuvo tu dia?', deQuien: DeQuien.mio),
    Mensaje(text: 'excelente y el tuyo? ', deQuien: DeQuien.ella),
  ];

  Future<void> sendMensaje(String text) async{
    final newMensaje = Mensaje(text: text, deQuien: DeQuien.mio);
    mensajesLista.add(newMensaje);

    notifyListeners();
  }
  
}