// ignore_for_file: use_build_context_synchronously

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:research_mobile_app/screens/camera_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final cameras = await availableCameras();
                  final firstCamera = cameras.first;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CameraScreen(firstCamera),
                    ),
                  );
                },
                child: const Text('Take A Photo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
