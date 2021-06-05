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
    _addImage(arCoreController, vector.Vector3(0, -2, -7.0));
    _addSecondImage(arCoreController, vector.Vector3(1.5, -2, -7.0));
    _addThirdImage(arCoreController, vector.Vector3(3.0, -2, -7.0));
    _addFifthImage(arCoreController, vector.Vector3(-1.5, -2, -7.0));
    _addFourthImage(arCoreController, vector.Vector3(3.0, 2.5, -7.0));//
    _addSixthImage(arCoreController, vector.Vector3(-1.5, 2.5, -7.0));//
    _addSeventhImage(arCoreController, vector.Vector3(0, 2.5, -7.0));//
    _addEigthImage(arCoreController, vector.Vector3(1.5, 2.5, -7.0));//
  }

  void _addImageLogo(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load(imageDescImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 450,
        height: 150
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(0, 0.8, -3.5),
    );
    controller.addArCoreNode(node);
  }

  void _addImage(ArCoreController controller, vector.Vector3 imageVector) async {
    Uint8List data = (await rootBundle.load(firstImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: imageVector,
    );
    controller.addArCoreNode(node);
  }

  void _addSecondImage(ArCoreController controller, vector.Vector3 secImageVector) async {
    Uint8List data = (await rootBundle.load(secImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: secImageVector,
    );
    controller.addArCoreNode(node);
  }

  void _addThirdImage(ArCoreController controller, vector.Vector3 thirdImageVector) async {
    Uint8List data = (await rootBundle.load(thirdtImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: thirdImageVector,
    );
    controller.addArCoreNode(node);
  }

  void _addFourthImage(ArCoreController controller, vector.Vector3 fourthImageVector) async {
    Uint8List data = (await rootBundle.load(fourthImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: fourthImageVector,
    );
    controller.addArCoreNode(node);
  }

  void _addFifthImage(ArCoreController controller, vector.Vector3 fifthImageVector) async {
    Uint8List data = (await rootBundle.load(fifthImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: fifthImageVector,
    );
    controller.addArCoreNode(node);
  }

  void _addSixthImage(ArCoreController controller, vector.Vector3 sixthImageVector) async {
    Uint8List data = (await rootBundle.load(sixthImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: sixthImageVector,
    );
    controller.addArCoreNode(node);
  }

  void _addSeventhImage(ArCoreController controller, vector.Vector3 seventhImageVector) async {
    Uint8List data = (await rootBundle.load(seventhImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: seventhImageVector,
    );
    controller.addArCoreNode(node);
  }

  void _addEigthImage(ArCoreController controller, vector.Vector3 eigthImageVector) async {
    Uint8List data = (await rootBundle.load(eightImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 2200
    );
    final node = ArCoreNode(
      image: image,
      position: eigthImageVector,
    );
    controller.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}

