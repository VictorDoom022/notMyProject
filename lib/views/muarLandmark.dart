import 'package:flutter/material.dart';
import 'package:notmyproject/views/kukupIslandInfoPage.dart';
import 'package:notmyproject/views/muarInfo.dart';
import 'package:notmyproject/views/pontianInfo.dart';

import 'ARStuffs/locationAR.dart';

class muarLandMarkPage extends StatefulWidget {
  @override
  _muarLandMarkPageState createState() => _muarLandMarkPageState();
}

class _muarLandMarkPageState extends State<muarLandMarkPage> {
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
          'MUAR > LANDMARK',
          style: TextStyle(
              fontFamily: 'openSans',
              fontSize: 20
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 6, 45, 86),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/images/Muar Land Mark 1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Muar City Landmark',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Road to Muar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context){
                              return locationAR(
                                appBarTitle: 'MUAR > LANDMARK > Muar City Landmark',
                                imageDescImageSrc: 'assets/images/muarlandmark/muarlandmark location.JPG',
                                firstImageSrc: 'assets/images/muarlandmark/muarlandmark.jpg',
                                secImageSrc: 'assets/images/muarlandmark/muarlandmark1.jpg',
                                thirdImageSrc: 'assets/images/muarlandmark/muarlandmark2.jpg',
                                fourthImageSrc: 'assets/images/muarlandmark/landmark4.JPG',
                                fifthImageSrc: 'assets/images/muarlandmark/landmark5.jpg',
                                sixthImageSrc: 'assets/images/muarlandmark/landmark6.jpg',
                                seventhImageSrc: 'assets/images/muarlandmark/landmark7.jpg',
                                eightImageSrc: 'assets/images/muarlandmark/landmark8.jpg',
                                imageLogoDesc: 'Location: \n 1947, Jalan Abdullah, Pekan Muar, 80400 Muar, Johor',
                              );
                            }
                        )
                        );
                      },
                      child: moreDetailsButton('assets/images/moreDetails.png', 'More details')
                  ),
                ],
              ),

            ),
            Container(
              child: Image(
                image: AssetImage('assets/images/Muar Land Mark 2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Muar Crown',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Historical landmark in Muar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                    ),
                  ),
                  moreDetailsButton('assets/images/moreDetails.png', 'More details'),
                ],
              ),

            ),
          ],
        ),
      ),
    );
  }

  Widget moreDetailsButton(String imageDir, String buttonTitle){
    return Stack(
      children: [
        Image(
          image: AssetImage(imageDir),
          height: 60,
          width: 150,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 20, 0, 0),
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lucida'
            ),
          ),
        ),
      ],
    );
  }
}
