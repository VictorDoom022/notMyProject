import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[900],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/logo.png'),
                width: 200,
                height: 200,
              ),
              Text(
                  'Johor Journey',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontFamily: 'Aharoni'
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  child: Text('START'),
                  onPressed: (){},
                  style: welcomePageButtonStyle,
              ),
              SizedBox(height: 30),
              ElevatedButton(
                child: Text('ABOUT US'),
                onPressed: (){},
                style: welcomePageButtonStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
