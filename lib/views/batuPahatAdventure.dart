import 'package:flutter/material.dart';

import 'ARStuffs/locationAR.dart';

class batuPahatAdventurePage extends StatefulWidget {
  @override
  _batuPahatAdventurePageState createState() => _batuPahatAdventurePageState();
}

class _batuPahatAdventurePageState extends State<batuPahatAdventurePage> {
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
          'BATU PAHAT > ADVENTURE',
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
                image: AssetImage('assets/images/Batu Pahat Adventure 1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Gunung Banang',
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
                      'It is famous and have been made into song and appeared in movies',
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
                                appBarTitle: 'BATU PAHAT > ADVENTURE > GUNUNG BANANG',
                                imageDescImageSrc: 'assets/images/gunungBanang/gunung banang loc.JPG',
                                firstImageSrc: 'assets/images/gunungBanang/gunungbanang1.jpg',
                                secImageSrc: 'assets/images/gunungBanang/gunungbanang2.jpg',
                                thirdImageSrc: 'assets/images/gunungBanang/gunung banang 3.jpg',
                                fourthImageSrc: 'assets/images/gunungBanang/gunung banang 4.jpg',
                                fifthImageSrc: 'assets/images/gunungBanang/gunung banang5.jpg',
                                sixthImageSrc: 'assets/images/gunungBanang/gunungbanang6.jpg',
                                seventhImageSrc: 'assets/images/gunungBanang/gunung banang7.jpg',
                                eightImageSrc: 'assets/images/gunungBanang/gunung banang 8.JPG',
                                imageLogoDesc: 'Location: \n Kampung Petani, 83000 Batu Pahat, Johor',
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
                image: AssetImage('assets/images/Batu Pahat Adventure2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Bukit Payung',
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
                      'Features beautiful wildflowers for hiking',
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
                                appBarTitle: 'BATU PAHAT > ADVENTURE > GUNUNG PAYUNG',
                                imageDescImageSrc: 'assets/images/bukitpayung/bukitpayunglocation.JPG',
                                firstImageSrc: 'assets/images/bukitpayung/bukitpayung1.jpg',
                                secImageSrc: 'assets/images/bukitpayung/bukitpayung2.jpg',
                                thirdImageSrc: 'assets/images/bukitpayung/bukit payung3.jpg',
                                fourthImageSrc: 'assets/images/bukitpayung/bukit payung4.jpg',
                                fifthImageSrc: 'assets/images/bukitpayung/bukit payung5.jpg',
                                sixthImageSrc: 'assets/images/bukitpayung/bukit payung6.jpg',
                                seventhImageSrc: 'assets/images/bukitpayung/bukit payung7.jpg',
                                eightImageSrc: 'assets/images/bukitpayung/bukit payung8.jpg',
                                imageLogoDesc: 'Location: \n Kampung Kangkar Merimau, 83500 Parit Sulong, Johor',
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
