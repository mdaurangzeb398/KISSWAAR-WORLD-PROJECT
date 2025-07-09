import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const KisswaarApp());
}

class KisswaarApp extends StatelessWidget {
  const KisswaarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kisswaar 💘',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.pinkAccent,
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FeatureShowcaseScreen(), // 🔥 Module testing yahi se start hota hai
  ));
}
