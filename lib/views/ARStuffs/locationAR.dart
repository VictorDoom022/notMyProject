import 'dart:typed_data';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class locationAR extends StatefulWidget {

  final String appBarTitle;
  final String imageDescImageSrc;
  final String firstImageSrc;
  final String secImageSrc;
  final String thirdImageSrc;
  final String fourthImageSrc;
  final String fifthImageSrc;
  final String sixthImageSrc;
  final String seventhImageSrc;
  final String eightImageSrc;
  final String imageLogoDesc;

  const locationAR({Key key, this.appBarTitle, this.imageDescImageSrc, this.firstImageSrc, this.secImageSrc, this.thirdImageSrc, this.fourthImageSrc, this.fifthImageSrc, this.sixthImageSrc, this.seventhImageSrc, this.eightImageSrc, this.imageLogoDesc}) : super(key: key);

  @override
  _locationARState createState() => _locationARState(appBarTitle, imageDescImageSrc, firstImageSrc, secImageSrc, thirdImageSrc, fourthImageSrc, fifthImageSrc, sixthImageSrc, seventhImageSrc, eightImageSrc, imageLogoDesc);
}

class _locationARState extends State<locationAR> {

  final String appBarTitle;
  final String imageDescImageSrc;
  final String firstImageSrc;
  final String secImageSrc;
  final String thirdImageSrc;
  final String fourthImageSrc;
  final String fifthImageSrc;
  final String sixthImageSrc;
  final String seventhImageSrc;
  final String eightImageSrc;
  final String imageLogoDesc;

  ArCoreController arCoreController;

  _locationARState(this.appBarTitle, this.imageDescImageSrc, this.firstImageSrc, this.secImageSrc, this.thirdImageSrc, this.fourthImageSrc, this.fifthImageSrc, this.sixthImageSrc, this.seventhImageSrc, this.eightImageSrc, this.imageLogoDesc);

  String firstImageNodeName = 'firstImageNode';
  String secondImageNodeName = 'secondImageNode';
  String thirdImageNodeName = 'thirdImageNode';
  String fourthImageNodeName = 'fourthImageNode';
  String fifthImageNodeName = 'fifthImageNode';
  String sixthImageNodeName = 'sixthImageNode';
  String seventhImageNodeName = 'seventhImageNode';
  String eightImageNodeName = 'eightImageNode';

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
            appBarTitle,
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
    _addImageLogo(controller);
    _addSeventhImage(arCoreController, vector.Vector3(-4.0, -2, -2.0), vector.Vector4(0, -50, 0, 25)); //left
    _addSixthImage(arCoreController, vector.Vector3(-3.0, -2, -3.5), vector.Vector4(0, -50, 0, 17));
    _addFifthImage(arCoreController, vector.Vector3(-1.0, -2, -5.0), vector.Vector4(0, -50, 0, 8));
    //_addImage(arCoreController, vector.Vector3(0, -2, -6.5), vector.Vector4(0,0,0,0)); //center
    _addSecondImage(arCoreController, vector.Vector3(1.0, -2, -5.0), vector.Vector4(0, 50, 0, 8));
    _addThirdImage(arCoreController, vector.Vector3(3.0, -2, -3.5), vector.Vector4(0, 50, 0, 15));
    _addFourthImage(arCoreController, vector.Vector3(4.0, -2, -2.0), vector.Vector4(0, 50, 0, 25));
   // _addEigthImage(arCoreController, vector.Vector3(5.5, -2, -5.0), vector.Vector4(0, 40, 0, 12)); //right

    controller.onNodeTap = (name) => handleTap(controller, name);
  }

  void handleTap(ArCoreController controller, String name){
    if(name == firstImageNodeName){
      //showAlertDialog(firstImageDesc != null ? firstImageDesc : '');
      _showMagnifiedImage(controller, fifthImageSrc);
    }
    if(name == secondImageNodeName){
      //showAlertDialog(secImageDesc != null ? secImageDesc : '');
      _showMagnifiedImage(controller, secImageSrc);
    }
    if(name == thirdImageNodeName){
      //showAlertDialog(thirdtImageDesc != null ? thirdtImageDesc : '');
      _showMagnifiedImage(controller, thirdImageSrc);
    }
    if(name == fourthImageNodeName){
      //showAlertDialog(fourthImageDesc != null ? fourthImageDesc : '');
      _showMagnifiedImage(controller, fourthImageSrc);
    }
    if(name == fifthImageNodeName){
      //showAlertDialog(fifthImageDesc != null ? fifthImageDesc : '');
      _showMagnifiedImage(controller, fifthImageSrc);
    }
    if(name == sixthImageNodeName){
      //showAlertDialog(sixthImageDesc != null ? sixthImageDesc : '');
      _showMagnifiedImage(controller, sixthImageSrc);
    }
    if(name == seventhImageNodeName){
      //showAlertDialog(seventhImageDesc != null ? seventhImageDesc : '');
      _showMagnifiedImage(controller, seventhImageSrc);
    }
    if(name == eightImageNodeName){
      //showAlertDialog(eightImageDesc != null ? eightImageDesc : '');
      _showMagnifiedImage(controller, eightImageSrc);
    }
    if(name == 'magnifiedImageNodeName'){
      controller.removeNode(nodeName: 'magnifiedImageNodeName');
    }
    if(name == 'imageLogoNode'){
      showAlertDialog(imageLogoDesc != null ? imageLogoDesc : '');
    }
  }

  void _showMagnifiedImage(ArCoreController controller, String imageSrc) async {
    Uint8List data = (await rootBundle.load(imageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 1700,
        height: 1700
    );
    final node = ArCoreNode(
      name: 'magnifiedImageNodeName',
      image: image,
      position: vector.Vector3(0, -2.0, -1.5),
    );
    controller.addArCoreNode(node);
  }

  void _addImageLogo(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load(imageDescImageSrc)).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 650,
        height: 350
    );
    final node = ArCoreNode(
      name: 'imageLogoNode',
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
    Uint8List data = (await rootBundle.load(thirdImageSrc)).buffer.asUint8List();
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
      name: eightImageNodeName,
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

