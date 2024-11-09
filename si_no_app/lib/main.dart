import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'config/tema/app_tema.dart';
import 'config/presentacion/pantallas/chat/chat_pantalla.dart';
import 'config/presentacion/providers/chat_providers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProviders()),
      ],
      child: MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTema().theme(),
        home: ChatPantalla(),
      ),
    );
  }
}
