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
        decoration: BoxDecoration(
          color: Colors.lightBlue[900],
          image: DecorationImage(
              image: AssetImage('assets/images/negeries.png'),
          )
        ),
      ),
    );
  }
}
