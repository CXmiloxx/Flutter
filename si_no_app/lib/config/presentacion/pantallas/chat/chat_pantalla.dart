import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../dominio/entidades/mensajes.dart';
import '../../providers/chat_providers.dart';
import '../../widgets/chat/mi_mensaje_burbuja.dart';
import '../../widgets/chat/su_mensaje_burbuja.dart';
import '../../widgets/compartido/caja_de_texto.dart';

class ChatPantalla extends StatelessWidget {
  const ChatPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.imgur.com/BoN9kdC.png'),
          ),
        ),
        title: const Text('Nigga'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProviders = context.watch<ChatProviders>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProviders.mensajesLista.length,
                itemBuilder: (context, index) {
                  final mensaje = chatProviders.mensajesLista[index];

                  return (mensaje.deQuien == DeQuien.ella)
                      ? const SuMensajeBurbuja()
                      : MiMensajeBurbuja(mensaje: mensaje);
                },
              ),
            ),
            CajaDeTexto(
              onValue: chatProviders.sendMensaje,
            ),
          ],
        ),
      ),
    );
  }
}
