import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Inicialize o Supabase com suas credenciais do projeto
  await Supabase.initialize(
    url: 'SUA_URL_DO_SUPABASE_AQUI',
    anonKey: 'SUA_CHAVE_ANON_DO_SUPABASE_AQUI',
  );

  runApp(
    const ProviderScope(
      child: ProtocoloZApp(),
    ),
  );
}

class ProtocoloZApp extends StatelessWidget {
  const ProtocoloZApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Protocolo Z',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          brightness: Brightness.dark,
        ),
      ),
      // O GoRouter será configurado aqui posteriormente
      routerConfig: null, 
    );
  }
}