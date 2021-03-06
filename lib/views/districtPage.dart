import 'package:flutter/material.dart';
import 'package:notmyproject/views/batuPahatInfo.dart';
import 'package:notmyproject/views/muarInfo.dart';
import 'package:notmyproject/views/pontianInfo.dart';

import 'johorBahruInfo.dart';

class districtPage extends StatefulWidget {
  @override
  _districtPageState createState() => _districtPageState();
}

class _districtPageState extends State<districtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[800],
          leading: IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          title: Text(
              'DISTRICT',
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
                    image: AssetImage('assets/images/negeries.png'),
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25, 150, 0, 0),
              child: moreDetailsButton('assets/images/segamat.png', 'Segamat')
            ),
            Container(
              padding: EdgeInsets.fromLTRB(100, 215, 0, 0),
              child: moreDetailsButton('assets/images/ledang.png', 'Ledang')
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return muarInfo();
                    }
                  )
                );
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 300, 0, 0),
                child: moreDetailsButton('assets/images/muar.png', 'Muar')
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return batuPahatInfo();
                    }
                  )
                );
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(70, 370, 0, 0),
                child: moreDetailsButton('assets/images/batuPahat.png', 'Batu Pahat')
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return pontianInfo();
                    }
                )
                );
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(130, 450, 0, 0),
                child: moreDetailsButton('assets/images/pontian.png', 'Pontian')
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(230, 215, 0, 0),
              child: moreDetailsButton('assets/images/msersing.png', 'Mersing')
            ),
            Container(
              padding: EdgeInsets.fromLTRB(160, 300, 0, 0),
                child: moreDetailsButton('assets/images/kluang.png', 'Kluang')
            ),
            Container(
              padding: EdgeInsets.fromLTRB(280, 350, 0, 0),
                child: moreDetailsButton('assets/images/kotaTinggi.png', 'Kota Tinggi')
            ),
            Container(
              padding: EdgeInsets.fromLTRB(210, 400, 0, 0),
              child: moreDetailsButton('assets/images/kulaiJaya.png', 'Kulai Jaya')
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return johorBahruInfo();
                    }
                  )
                );
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(240, 460, 0, 0),
                child: moreDetailsButton('assets/images/johorBahru.png', 'Johor Bahru')
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
          height: 100,
          width: 100,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(13, 43, 0, 0),
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Lucida',
                fontSize: 10
            ),
          ),
        ),
      ],
    );
  }

}
