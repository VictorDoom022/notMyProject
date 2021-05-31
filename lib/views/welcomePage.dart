import 'package:flutter/material.dart';
import 'package:notmyproject/views/aboutUs.dart';
import 'package:notmyproject/views/districtPage.dart';

class welcomePage extends StatefulWidget {
  @override
  _welcomePageState createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {

  ButtonStyle welcomePageButtonStyle = ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
          TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lucida',
          )
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
          Colors.redAccent
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide(
                  width: 5,
                  color: Colors.white
              )
          )
      )
  );

  TextStyle logoTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 50,
      fontFamily: 'Aharoni'
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 6, 45, 86),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/logo.png'),
                width: 200,
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      'Johor J',
                    style: logoTextStyle,
                  ),
                  Image(
                    image: AssetImage('assets/images/globeIcon.png'),
                    width: 40,
                  ),
                  Text(
                    'urney',
                    style: logoTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  child: Text('START'),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context){
                          return districtPage();
                        }
                      )
                    );
                  },
                  style: welcomePageButtonStyle,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text('ABOUT US'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(context){
                        return aboutUs();
                      }
                    )
                  );
                },
                style: welcomePageButtonStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
