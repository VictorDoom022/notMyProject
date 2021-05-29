import 'package:flutter/material.dart';
import 'package:notmyproject/views/districtPage.dart';
import 'package:notmyproject/views/pontianLeisurePage.dart';

class pontianInfo extends StatefulWidget {
  @override
  _pontianInfoState createState() => _pontianInfoState();
}

class _pontianInfoState extends State<pontianInfo> {

  TextStyle gridTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gothic'
  );

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
                    return districtPage();
                  }
              )
              );
            },
          ),
          title: Text(
            'PONTIAN',
            style: TextStyle(
                fontFamily: 'Georgia',
                fontSize: 20
            ),
          ),
        ),
      body: Container(
        color: Colors.lightBlue[900],
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            Container(
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Image(
                        image: AssetImage('assets/images/ps1.png'),
                        fit: BoxFit.fill,
                    )
                  ),
                  Center(
                      child: Text(
                          'Restaurant',
                        style: gridTextStyle,
                      )
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                      child: Image(
                      image: AssetImage('assets/images/ps4.png'),
                      fit: BoxFit.fill,
                    )
                  ),
                  Center(
                      child: Text(
                        'Beach',
                        style: gridTextStyle,
                      )
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Image(
                        image: AssetImage('assets/images/ps2.png'),
                        fit: BoxFit.cover,
                      )
                  ),
                  Center(
                      child: Text(
                        'Theme Park',
                        style: gridTextStyle,
                      )
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image(
                      image: AssetImage('assets/images/ps3.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                      child: Text(
                        'Adventure',
                        style: gridTextStyle,
                      )
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return pontianInfoLeisurePage();
                    }
                  )
                );
              },
              child: Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image(
                        image: AssetImage('assets/images/ps5.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Center(
                        child: Text(
                          'Lesisure',
                          style: gridTextStyle,
                        )
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image(
                      image: AssetImage('assets/images/ps6.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Center(
                      child: Text(
                        'Landmark',
                        style: gridTextStyle,
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}