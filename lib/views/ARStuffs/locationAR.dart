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
  final String firstImageDesc;
  final String secImageDesc;
  final String thirdtImageDesc;
  final String fourthImageDesc;
  final String fifthImageDesc;
  final String sixthImageDesc;
  final String seventhImageDesc;
  final String eightImageDesc;

  const locationAR({Key key, this.appBatTitle, this.imageDescImageSrc, this.firstImageSrc, this.secImageSrc, this.thirdtImageSrc, this.fourthImageSrc, this.fifthImageSrc, this.sixthImageSrc, this.seventhImageSrc, this.eightImageSrc, this.firstImageDesc, this.secImageDesc, this.thirdtImageDesc, this.fourthImageDesc, this.fifthImageDesc, this.sixthImageDesc, this.seventhImageDesc, this.eightImageDesc}) : super(key: key);

  @override
  _locationpARState createState() => _locationpARState(appBatTitle, imageDescImageSrc, firstImageSrc, secImageSrc, thirdtImageSrc, fourthImageSrc, fifthImageSrc, sixthImageSrc, seventhImageSrc, eightImageSrc, firstImageDesc, secImageDesc, thirdtImageDesc, fourthImageDesc, fifthImageDesc, sixthImageDesc, seventhImageSrc, eightImageDesc);
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
  final String firstImageDesc;
  final String secImageDesc;
  final String thirdtImageDesc;
  final String fourthImageDesc;
  final String fifthImageDesc;
  final String sixthImageDesc;
  final String seventhImageDesc;
  final String eightImageDesc;

  ArCoreController arCoreController;

  _locationpARState(this.appBatTitle, this.imageDescImageSrc, this.firstImageSrc, this.secImageSrc, this.thirdtImageSrc, this.fourthImageSrc, this.fifthImageSrc, this.sixthImageSrc, this.seventhImageSrc, this.eightImageSrc, this.firstImageDesc, this.secImageDesc, this.thirdtImageDesc, this.fourthImageDesc, this.fifthImageDesc, this.sixthImageDesc, this.seventhImageDesc, this.eightImageDesc);

  String firstImageNodeName = 'firstImageNode';
  String secondImageNodeName = 'secondImageNode';
  String thirdImageNodeName = 'thirdImageNode';
  String fourthImageNodeName = 'fourthImageNode';
  String fifthImageNodeName = 'fifthImageNode';
  String sixthImageNodeName = 'sixthImageNode';
  String seventhImageNodeName = 'seventhImageNode';
  String eigthImageNodeName = 'eigthImageNode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        title: Text(
            appBatTitle,
          style: TextStyle(
              fontFamily: 'openSans',
              fontSize: 20
          ),
        ),
      ),
      body: ArCoreView(
        enableTapRecognizer: true,
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }

  Future<dynamic> showAlertDialog(String name){
    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 6, 45, 86),
            content: Text(
                name,
              style: TextStyle(
                color: Colors.white
              ),
              textAlign: TextAlign.center,
            ),
            actions: [
              TextButton(
                child: Text(
                    'Close',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
                onPressed: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    //rotate vector4 0, -10, 0, 2
    _addSeventhImage(arCoreController, vector.Vector3(-4.0, -2, -2.0), vector.Vector4(0, -50, 0, 25)); //left
    _addSixthImage(arCoreController, vector.Vector3(-3.0, -2, -3.5), vector.Vector4(0, -50, 0, 17));
    _addFifthImage(arCoreController, vector.Vector3(-1.0, -2, -5.0), vector.Vector4(0, -50, 0, 8));
    //_addImage(arCoreController, vector.Vector3(0, -2, -6.5), vector.Vector4(0,0,0,0)); //center
    _addSecondImage(arCoreController, vector.Vector3(1.0, -2, -5.0), vector.Vector4(0, 50, 0, 8));
    _addThirdImage(arCoreController, vector.Vector3(3.0, -2, -3.5), vector.Vector4(0, 50, 0, 15));
    _addFourthImage(arCoreController, vector.Vector3(4.0, -2, -2.0), vector.Vector4(0, 50, 0, 25));
   // _addEigthImage(arCoreController, vector.Vector3(5.5, -2, -5.0), vector.Vector4(0, 40, 0, 12)); //right

    controller.onNodeTap = (name) => handleTap(name);
  }

  void handleTap(String name){
    if(name == firstImageNodeName){
      showAlertDialog(firstImageDesc != null ? firstImageDesc : '');
    }
    if(name == secondImageNodeName){
      showAlertDialog(secImageDesc != null ? secImageDesc : '');
    }
    if(name == thirdImageNodeName){
      showAlertDialog(thirdtImageDesc != null ? thirdtImageDesc : '');
    }
    if(name == fourthImageNodeName){
      showAlertDialog(fourthImageDesc != null ? fourthImageDesc : '');
    }
    if(name == fifthImageNodeName){
      showAlertDialog(fifthImageDesc != null ? fifthImageDesc : '');
    }
    if(name == sixthImageNodeName){
      showAlertDialog(sixthImageDesc != null ? sixthImageDesc : '');
    }
    if(name == seventhImageNodeName){
      showAlertDialog(seventhImageDesc != null ? seventhImageDesc : '');
    }
    if(name == eigthImageNodeName){
      showAlertDialog(eightImageDesc != null ? eightImageDesc : '');
    }
  }

  void _addImageLogo(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load(imageDescImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 650,
        height: 350
    );
    final node = ArCoreNode(
      image: image,
      position: vector.Vector3(0, -2.3, -3.5),
    );
    controller.addArCoreNode(node);
  }

  void _addImage(ArCoreController controller, vector.Vector3 imageVector, vector.Vector4 imageRotateVector) async {
    Uint8List data = (await rootBundle.load(firstImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: fifthImageNodeName,
      image: image,
      position: imageVector,
      rotation: imageRotateVector
    );
    controller.addArCoreNode(node);
  }

  void _addSecondImage(ArCoreController controller, vector.Vector3 secImageVector, vector.Vector4 secImageRotateVector) async {
    Uint8List data = (await rootBundle.load(secImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: secondImageNodeName,
      image: image,
      position: secImageVector,
      rotation: secImageRotateVector
    );
    controller.addArCoreNode(node);
  }

  void _addThirdImage(ArCoreController controller, vector.Vector3 thirdImageVector, vector.Vector4 thirdImageRotateVector) async {
    Uint8List data = (await rootBundle.load(thirdtImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: thirdImageNodeName,
      image: image,
      position: thirdImageVector,
      rotation: thirdImageRotateVector
    );
    controller.addArCoreNode(node);
  }

  void _addFourthImage(ArCoreController controller, vector.Vector3 fourthImageVector, vector.Vector4 fourthImageRotateVector) async {
    Uint8List data = (await rootBundle.load(fourthImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      image: image,
      position: fourthImageVector,
      rotation: fourthImageRotateVector
    );
    controller.addArCoreNode(node);
  }

  void _addFifthImage(ArCoreController controller, vector.Vector3 fifthImageVector, vector.Vector4 fifthImageRotateVector) async {
    Uint8List data = (await rootBundle.load(fifthImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: fifthImageNodeName,
      image: image,
      position: fifthImageVector,
      rotation: fifthImageRotateVector
    );
    controller.addArCoreNode(node);
  }

  void _addSixthImage(ArCoreController controller, vector.Vector3 sixthImageVector, vector.Vector4 sixthImageRotateVector) async {
    Uint8List data = (await rootBundle.load(sixthImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: sixthImageNodeName,
      image: image,
      position: sixthImageVector,
      rotation: sixthImageRotateVector
    );
    controller.addArCoreNode(node);
  }

  void _addSeventhImage(ArCoreController controller, vector.Vector3 seventhImageVector, vector.Vector4 seventhImageRotateVector) async {
    Uint8List data = (await rootBundle.load(seventhImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: seventhImageNodeName,
      image: image,
      position: seventhImageVector,
      rotation: seventhImageRotateVector
    );
    controller.addArCoreNode(node);
  }

  void _addEigthImage(ArCoreController controller, vector.Vector3 eigthImageVector, vector.Vector4 eigthImageRotateVector) async {
    Uint8List data = (await rootBundle.load(eightImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: eigthImageNodeName,
      image: image,
      position: eigthImageVector,
      rotation: eigthImageRotateVector
    );
    controller.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}

