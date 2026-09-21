import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSelectorWidget extends StatelessWidget 
{
  final void Function(List<XFile> photos) onPhotosSelected;
  ImageSelectorWidget({super.key, required this.onPhotosSelected});

  final ImagePicker _imagePicker = ImagePicker();

  @override
  Widget build(BuildContext context) 
  {
      return ElevatedButton(
        onPressed: _selectImage,
        child: const Text('Select Image'),
      );
  }

  void _selectImage() async 
  {
    final List<XFile> images = await _imagePicker.pickMultiImage();
    onPhotosSelected(images);
  }
  
}