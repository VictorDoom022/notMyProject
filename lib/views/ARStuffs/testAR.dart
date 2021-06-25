import 'dart:typed_data';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class testAR extends StatefulWidget {
  @override
  _testARState createState() => _testARState();
}

class _testARState extends State<testAR> {

  ArCoreController arCoreController;

  String firstImageNodeName = 'firstImageNode';

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
            'TEST AR',
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

    arCoreController.onTrackingImage = _handleTrackImage;
    //_addImage(arCoreController, vector.Vector3(-4.0, -2, -2.0), vector.Vector4(0, -50, 0, 25)); //left
    loadImage();
  }

  loadImage() async{
    Uint8List data = (await rootBundle.load('assets/images/legoland/legoland1.jpg')).buffer.asUint8List();
    arCoreController.loadSingleAugmentedImage(bytes: data);
  }

  _handleTrackImage(ArCoreAugmentedImage augmentedImage){
    _addSphere(augmentedImage);
  }

  Future _addSphere(ArCoreAugmentedImage augmentedImage) async {
    final ByteData textureBytes = await rootBundle.load('assets/images/legoland/legoland1.jpg');

    final material = ArCoreMaterial(
      color: Color.fromARGB(120, 66, 134, 244),
      textureBytes: textureBytes.buffer.asUint8List(),
    );
    final sphere = ArCoreSphere(
      materials: [material],
      radius: augmentedImage.extentX / 2,
    );
    final node = ArCoreNode(
      shape: sphere,
    );
    arCoreController.addArCoreNodeToAugmentedImage(node, augmentedImage.index);
  }

  void _addCube(ArCoreController controller) async {

    final moonMaterial = ArCoreMaterial(color: Colors.grey);
    Uint8List data = (await rootBundle.load('assets/images/legoland/legoland1.jpg')).buffer.asUint8List();

    final moonShape = ArCoreSphere(
      materials: [moonMaterial],
      radius: 0.03,
    );

    final moon = ArCoreNode(
      shape: moonShape,
      position: vector.Vector3(0.2, 0, 0),
      rotation: vector.Vector4(0, 0, 0, 0),
    );

    final earthMaterial = ArCoreMaterial(
        color: Color.fromARGB(120, 66, 134, 244),
        textureBytes: data
    );

    final earthShape = ArCoreSphere(
      materials: [earthMaterial],
      radius: 0.1,
    );

    final earth = ArCoreNode(
        shape: earthShape,
        children: [moon],
        position: vector.Vector3(0.0, 1.0, 0.0),
        rotation: vector.Vector4(0, -50, 0, 8)
    );
    controller.addArCoreNode(earth);
  }

  void _addImageLogo(ArCoreController controller) async {
    Uint8List data = (await rootBundle.load('assets/images/legoland/legoland1.jpg')).buffer.asUint8List();
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
    Uint8List data = (await rootBundle.load('assets/images/legoland/legoland1.jpg')).buffer.asUint8List();
    final image = ArCoreImage(
        bytes: data,
        width: 900,
        height: 1200
    );
    final node = ArCoreNode(
      name: 'firstImageSrc',
      image: image,
      position: imageVector,
      rotation: imageRotateVector
    );
    controller.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}

