import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:gradients_ai/widgets/image_selector_widget.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  List<XFile> photos = []; // starts empty

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload Photo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageSelectorWidget(
              onPhotosSelected: (selected) {
                setState(() => photos = selected);
              },
            ),
            const SizedBox(height: 20),
            Text('${photos.length} photos selected'),
            for (final photo in photos) Text(photo.name),
          ],
        ),
      ),
    );
  }
}