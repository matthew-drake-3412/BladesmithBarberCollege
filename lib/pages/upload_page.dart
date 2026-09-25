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

  // Put next page logic here
  void nextPage() 
  {
    // Navigate to the next page, passing the selected photos
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => NextPage(photos: photos),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Upload Photo'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(children: [
            
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: ImageSelectorWidget(
              onPhotosSelected: (selected) {
                setState(() => photos = selected);
              },
            ),
            ),
            // const SizedBox(height: 20),
            Text('${photos.length} photos selected'),
            for (final photo in photos) Text(photo.name),

            ]),
            ),

            ElevatedButton(
              onPressed: photos.isNotEmpty ? nextPage : null,
              child: const Text("Next")
            )
          ],
        ),
      ),
    );
  }
}