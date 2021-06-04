import 'dart:typed_data';

import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class locationAR extends StatefulWidget {

  final String appBatTitle;
  final String imageDescImageSrc;
  final String firstImageSrc;
  final String secImageSrc;
  final String thirdtImageSrc;
  final String fourthImageSrc;
  final String fifthImageSrc;
  final String sixthImageSrc;
  final String seventhImageSrc;
  final String eightImageSrc;

  const locationAR({Key key, this.appBatTitle, this.imageDescImageSrc, this.firstImageSrc, this.secImageSrc, this.thirdtImageSrc, this.fourthImageSrc, this.fifthImageSrc, this.sixthImageSrc, this.seventhImageSrc, this.eightImageSrc}) : super(key: key);

  @override
  _locationpARState createState() => _locationpARState(appBatTitle, imageDescImageSrc, firstImageSrc, secImageSrc, thirdtImageSrc, fourthImageSrc, fifthImageSrc, sixthImageSrc, seventhImageSrc, eightImageSrc);
}

class _locationpARState extends State<locationAR> {

  final String appBatTitle;
  final String imageDescImageSrc;
  final String firstImageSrc;
  final String secImageSrc;
  final String thirdtImageSrc;
  final String fourthImageSrc;
  final String fifthImageSrc;
  final String sixthImageSrc;
  final String seventhImageSrc;
  final String eightImageSrc;

  ArCoreController arCoreController;

  _locationpARState(this.appBatTitle, this.imageDescImageSrc, this.firstImageSrc, this.secImageSrc, this.thirdtImageSrc, this.fourthImageSrc, this.fifthImageSrc, this.sixthImageSrc, this.seventhImageSrc, this.eightImageSrc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(appBatTitle),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;

    _addImageLogo(arCoreController);
    _addImage(arCoreController);
    _addSecondImage(arCoreController);
    _addThirdImage(arCoreController);
    _addFourthImage(arCoreController);
    _addFifthImage(arCoreController);
    _addSixthImage(arCoreController);
    _addSeventhImage(arCoreController);
    _addEigthImage(arCoreController);
  }

  void _addImageLogo(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load(imageDescImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 400,
        height: 100
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(0, 0, -1.5),
    );
    controller.addArCoreNode(node);
  }

  void _addImage(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load(firstImageSrc)).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load(secImageSrc)).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load(thirdtImageSrc)).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load(fourthImageSrc)).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load(fifthImageSrc)).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load(sixthImageSrc)).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load(seventhImageSrc)).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load(eightImageSrc)).buffer.asUint8List();
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

