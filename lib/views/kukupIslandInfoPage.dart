import 'package:flutter/material.dart';
import 'package:notmyproject/views/pontianLeisurePage.dart';

class kukupIslandInfoPage extends StatefulWidget {
  @override
  _kukupIslandInfoPageState createState() => _kukupIslandInfoPageState();
}

class _kukupIslandInfoPageState extends State<kukupIslandInfoPage> {
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
          'PONTIAN > LEISURE > KUKUP ISLAND',
          style: TextStyle(
              fontFamily: 'openSans',
              fontSize: 20
          ),
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 6, 45, 86),
                  image: DecorationImage(
                      image: AssetImage('assets/images/ps9.png'),
                      fit: BoxFit.cover
                  )
              ),
            ),
            Row(
              children: [
                Image(
                  image: AssetImage('assets/images/mapImage.png'),
                  width: 80,
                  height: 80,
                ),
                SizedBox(width: 20),
                Container(
                  height: 70,
                  color: Colors.white24,
                  child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Pulau Kukup, 82300, Johor',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                      )
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 100, 0, 0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/phoneImage.png'),
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 70,
                    color: Colors.white24,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 200, 0, 0),
              child: Row(
                children: [
                  Image(
                    image: AssetImage('assets/images/mailImage.png'),
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 70,
                    color: Colors.white24,
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800
                            ),
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage('assets/images/aHuman.png'),
                width: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
