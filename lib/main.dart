import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_shimmers/pages/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown
      ]
  ).then((_){runApp(const MainApp());});
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loading Shimmers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xff000000),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, ).copyWith(background: Colors.black, ),
      ),
      home: const MainPage(),
    );
  }
}


