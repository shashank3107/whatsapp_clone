import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/main.dart';

class CameraHome extends StatefulWidget {
  const CameraHome({Key? key}) : super(key: key);

  @override
  _CameraHomeState createState() => _CameraHomeState();
}

class _CameraHomeState extends State<CameraHome> {
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras![0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CameraPreview(controller);
  }
}
