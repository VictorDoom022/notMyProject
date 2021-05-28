import 'package:flutter/material.dart';
import 'package:notmyproject/views/welcomePage.dart';

class districtPage extends StatefulWidget {
  @override
  _districtPageState createState() => _districtPageState();
}

class _districtPageState extends State<districtPage> {
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
                    return welcomePage();
                  }
                )
              );
            },
          ),
          title: Text(
              'DISTRICT',
              style: TextStyle(
                fontFamily: 'Georgia',
                fontSize: 20
              ),
          ),
        ),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue[900],
                  image: DecorationImage(
                    image: AssetImage('assets/images/negeries.png'),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 150, 0, 0),
              child: Image(
                image: AssetImage('assets/images/segamat.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100, 215, 0, 0),
              child: Image(
                image: AssetImage('assets/images/ledang.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 300, 0, 0),
              child: Image(
                image: AssetImage('assets/images/muar.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(70, 370, 0, 0),
              child: Image(
                image: AssetImage('assets/images/batuPahat.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(130, 450, 0, 0),
              child: Image(
                image: AssetImage('assets/images/pontian.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(230, 215, 0, 0),
              child: Image(
                image: AssetImage('assets/images/msersing.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(160, 300, 0, 0),
              child: Image(
                image: AssetImage('assets/images/kluang.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(280, 350, 0, 0),
              child: Image(
                image: AssetImage('assets/images/kotaTinggi.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(210, 400, 0, 0),
              child: Image(
                image: AssetImage('assets/images/kulaiJaya.png'),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(240, 460, 0, 0),
              child: Image(
                image: AssetImage('assets/images/johorBahru.png'),
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
