import 'package:flutter/material.dart';
import 'package:research_mobile_app/routes/screen_routes.dart';
import 'package:research_mobile_app/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ResearchApp());
}

class ResearchApp extends StatelessWidget {
  const ResearchApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Research App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      onGenerateRoute: ScreenRoutes.generateRoute,
    );
  }
}
