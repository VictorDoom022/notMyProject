import 'package:flutter/material.dart';
import 'package:notmyproject/views/welcomePage.dart';

class aboutUs extends StatefulWidget {
  @override
  _aboutUsState createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/crown.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder:(context){
                          return welcomePage();
                        }
                      )
                    );
                  },
                  child: Container(
                    child: Image(
                      image: AssetImage('assets/images/closeBtn.png'),
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white10,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'About US',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'This application is about the travel guide to Johor',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
