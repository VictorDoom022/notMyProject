import 'package:flutter/material.dart';
import 'package:notmyproject/views/batuPahatInfo.dart';
import 'package:notmyproject/views/kukupIslandInfoPage.dart';
import 'package:notmyproject/views/pontianInfo.dart';

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
            Navigator.push(context, MaterialPageRoute(
                builder:(context){
                  return batuPahatInfo();
                }
            )
            );
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
                              return kukupIslandInfoPage();
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
