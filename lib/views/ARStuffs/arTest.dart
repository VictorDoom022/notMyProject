import 'dart:typed_data';

import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class arTest extends StatefulWidget {
  @override
  _arTestState createState() => _arTestState();
}

class _arTestState extends State<arTest> {
  ArCoreController arCoreController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('AR Test'),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;

    _addImage(arCoreController);
    _addSecondImage(arCoreController);
    _addThirdImage(arCoreController);
    _addFourthImage(arCoreController);
    _addFifthImage(arCoreController);
    _addSixthImage(arCoreController);
    _addSeventhImage(arCoreController);
    _addEigthImage(arCoreController);
  }

  void _addImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/bridge new.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(0, -2, -3.5),
    );
    controller.addArCoreNode(node);
  }

  void _addSecondImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/kukup tree.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(1.5, -2, -3.3),
    );
    controller.addArCoreNode(node);
  }

  void _addThirdImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/kukup scene.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(3.0, -2, -3.3),
    );
    controller.addArCoreNode(node);
  }

  void _addFourthImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/kukup scene 1.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(4.5, -2, -3.3),
    );
    controller.addArCoreNode(node);
  }

  void _addFifthImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/kukup scene 2.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(-1.5, -2, -3.3),
    );
    controller.addArCoreNode(node);
  }

  void _addSixthImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/kukup taman.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(-3.0, -2, -3.3),
    );
    controller.addArCoreNode(node);
  }

  void _addSeventhImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/kukup view.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(0, 1.5, -3.3),
    );
    controller.addArCoreNode(node);
  }

  void _addEigthImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/kukup/monkey.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(1.5, 1.5, -3.3),
    );
    controller.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}

