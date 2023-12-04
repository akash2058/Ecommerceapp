import 'package:ecommerceapp/provider/ecocontroller.dart';
import 'package:ecommerceapp/view/splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    runApp(
      ChangeNotifierProvider<Ecocontroller>(
        lazy: false,
        create: (context) =>
            Ecocontroller(), // Instantiate your ChangeNotifier subclass here
        child: const MyApp(),
      ),
    );
  } catch (e) {
    print('Error during Firebase initialization: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
