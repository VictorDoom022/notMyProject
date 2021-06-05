import 'package:flutter/material.dart';
import 'package:notmyproject/views/ARStuffs/locationAR.dart';
import 'package:notmyproject/views/johorBahruInfo.dart';
import 'package:notmyproject/views/kukupIslandInfoPage.dart';
import 'package:notmyproject/views/pontianInfo.dart';

class johorBahruThemeParkPage extends StatefulWidget {
  @override
  _johorBahruThemeParkPageState createState() => _johorBahruThemeParkPageState();
}

class _johorBahruThemeParkPageState extends State<johorBahruThemeParkPage> {
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
                  return johorBahruInfo();
                }
            )
            );
          },
        ),
        title: Text(
          'JOHOR BAHRU > THEME PARK',
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
                image: AssetImage('assets/images/Johor Bahru Theme Park 1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Legoland Park',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Theme park focusing on the construction toy system Lego',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context){
                              return locationAR(
                                appBatTitle: 'JOHOR BAHRU > THEME PARK > LEGOLAND',
                                imageDescImageSrc: 'assets/images/legoland/legoland location.JPG',
                                firstImageSrc: 'assets/images/legoland/legoland1.jpg',
                                secImageSrc: 'assets/images/legoland/legoland2.jpg',
                                thirdtImageSrc: 'assets/images/legoland/legoland3.jpg',
                                fourthImageSrc: 'assets/images/legoland/legoland4.jpg',
                                fifthImageSrc: 'assets/images/legoland/legoland5.jpg',
                                sixthImageSrc: 'assets/images/legoland/legoland6.jpg',
                                seventhImageSrc: 'assets/images/legoland/legoland 7.jpg',
                                eightImageSrc: 'assets/images/legoland/legoland8.jpg',
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
                image: AssetImage('assets/images/Johor Bahru Theme Park 2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Danga Bay Park',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Text(
                      'Largest recreational park in the city of Johor Bahru',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder:(context){
                              return locationAR(
                                appBatTitle: 'JOHOR BAHRU > THEME PARK > DANGA BAY',
                                imageDescImageSrc: 'assets/images/dangaBay/danga bay location.JPG',
                                firstImageSrc: 'assets/images/dangaBay/danga bay 1.jpg',
                                secImageSrc: 'assets/images/dangaBay/danga bay 2.jpg',
                                thirdtImageSrc: 'assets/images/dangaBay/danga bay 3.jpg',
                                fourthImageSrc: 'assets/images/dangaBay/danga bay 4.jpg',
                                fifthImageSrc: 'assets/images/dangaBay/danga bay 5.jpg',
                                sixthImageSrc: 'assets/images/dangaBay/danga.jpg',
                                seventhImageSrc: 'assets/images/dangaBay/danga bay 7.jpg',
                                eightImageSrc: 'assets/images/dangaBay/danga bay 8.jpg',
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
