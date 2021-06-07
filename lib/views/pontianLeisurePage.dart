import 'package:flutter/material.dart';
import 'package:notmyproject/views/ARStuffs/kukupAR.dart';
import 'package:notmyproject/views/ARStuffs/locationAR.dart';
import 'package:notmyproject/views/kukupIslandInfoPage.dart';
import 'package:notmyproject/views/pontianInfo.dart';

class pontianLeisurePage extends StatefulWidget {
  @override
  _pontianLeisurePageState createState() => _pontianLeisurePageState();
}

class _pontianLeisurePageState extends State<pontianLeisurePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder:(context){
                  return pontianInfo();
                }
            )
            );
          },
        ),
        title: Text(
          'PONTIAN > LEISURE',
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
                image: AssetImage('assets/images/ps5.png'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Kukup Island',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Mangrove island with fishing & wildlife',
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
                                appBatTitle: 'PONTIAN > LEISURE > KUKUP ISLAND',
                                imageDescImageSrc: 'assets/images/kukup/kukupLogo.jpeg',
                                firstImageSrc: 'assets/images/kukup/bridge new.jpg',
                                secImageSrc: 'assets/images/kukup/kukup tree.jpg',
                                thirdtImageSrc: 'assets/images/kukup/kukup scene.jpg',
                                fourthImageSrc: 'assets/images/kukup/kukup scene 1.jpg',
                                fifthImageSrc: 'assets/images/kukup/kukup scene 2.jpg',
                                sixthImageSrc: 'assets/images/kukup/kukup taman.jpg',
                                seventhImageSrc: 'assets/images/kukup/bridge new.jpg',
                                eightImageSrc: 'assets/images/kukup/monkey.jpg',
                                firstImageDesc: 'Pulai Kukup, 82300, Johor',
                                secImageDesc: 'Location: \n Pulai Kukup, 82300, Johor',
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
                image: AssetImage('assets/images/tanjungPiai.png'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tanjung Piai',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Park and garden and wetland',
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
                            appBatTitle: 'PONTIAN > LEISURE > TANJUNG PIAI',
                            imageDescImageSrc: 'assets/images/tanjungPiai/location tanjung piai.JPG',
                            firstImageSrc: 'assets/images/tanjungPiai/Tanjung-Piai 1.jpg',
                            secImageSrc: 'assets/images/tanjungPiai/tanjung piai 2.jpg',
                            thirdtImageSrc: 'assets/images/tanjungPiai/tanjung piai3.jpg',
                            fourthImageSrc: 'assets/images/tanjungPiai/tanjung piai 4.jpg',
                            fifthImageSrc: 'assets/images/tanjungPiai/tanjung piai 5.jpg',
                            sixthImageSrc: 'assets/images/tanjungPiai/tanjung piai 6.jpg',
                            seventhImageSrc: 'assets/images/tanjungPiai/tanjung piai 7.jpg',
                            eightImageSrc: 'assets/images/tanjungPiai/tanjung piai 8.jpg',
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
