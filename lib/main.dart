import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instant_messenger_project/firebase_options.dart';
import 'package:instant_messenger_project/pages/authpage.dart';
import 'package:instant_messenger_project/pages/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AuthPage());
  }
}
