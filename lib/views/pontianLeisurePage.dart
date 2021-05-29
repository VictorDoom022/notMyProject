import 'package:flutter/material.dart';
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
              fontFamily: 'Georgia',
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
