import 'package:flutter/material.dart';
import 'upload_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Start')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => UploadPage()),
            );
          },
          child: const Text('Upload a photo'),
        ),
      ),
    );
  }
}