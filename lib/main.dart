import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generative_language_test/0_core/routing/router/flutter_router1_utils/flutter_router_1.0.dart';
import 'package:generative_language_test/0_core/routing/router/flutter_router1_utils/screen_names.dart';
import 'package:generative_language_test/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: ScreenNames.splashScreenName,
    );
  }
}
