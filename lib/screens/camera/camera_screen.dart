import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CamOverlay extends StatefulWidget {
  @override
  _CamOverlayState createState() => _CamOverlayState();
}

class _CamOverlayState extends State<CamOverlay> {
  CameraController _controller;
  Future<void> _initCamFuture;

  @override
  void initState() {
    super.initState();
    _initApp();
  }

  _initApp() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    final firstCam = cameras.first;

    _controller = CameraController(
      firstCam,
      ResolutionPreset.medium,
    );

    _initCamFuture = _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Camera Overylay")),
      body: FutureBuilder<void>(
        future: _initCamFuture,
        builder: (context, snapshot) {
          return Stack(
            alignment: FractionalOffset.center,
            children: <Widget>[
              new Positioned.fill(
                child: new AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: new CameraPreview(_controller)),
              ),
              new Positioned.fill(
                child: new Opacity(
                    opacity: 0.3,
                    child: Container(
                      height: 200.0,
                      color: Colors.red,
                      child: Center(
                        child: Text("Inducesmile.com",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            )),
                      ),
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
