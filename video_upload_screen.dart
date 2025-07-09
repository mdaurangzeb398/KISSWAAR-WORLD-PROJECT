import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VideoUploadScreen extends StatefulWidget {
  const VideoUploadScreen({super.key});

  @override
  State<VideoUploadScreen> createState() => _VideoUploadScreenState();
}

class _VideoUploadScreenState extends State<VideoUploadScreen> {
  XFile? _selectedVideo;

  Future<void> _pickVideo() async {
    final pickedVideo = await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (pickedVideo != null) {
      setState(() => _selectedVideo = pickedVideo);
      // TODO: Compress and upload to Firebase
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎥 Upload Product Video')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.upload_file),
              label: const Text('Pick Video'),
              onPressed: _pickVideo,
            ),
            const SizedBox(height: 20),
            if (_selectedVideo != null)
              Text('Selected: ${_selectedVideo!.name}', style: const TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
