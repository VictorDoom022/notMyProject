import 'package:flutter/material.dart';
import 'package:notmyproject/views/districtPage.dart';
import 'package:notmyproject/views/pontianLeisurePage.dart';
import 'package:notmyproject/views/pontianRestaurant.dart';

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

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
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
        color: Color.fromARGB(255, 6, 45, 86),
        child: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder:(context){
                    return pontianRestaurantPage();
                  }
                )
              );
            },
            child: Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                          child: Image(
                            image: AssetImage('assets/images/ps1.png'),
                            fit: BoxFit.fill,
                      ),
                        )
                    ),
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/restaurantIcon.png'),
                              height: 80,
                            ),
                            Text(
                                'Restaurant',
                              style: gridTextStyle,
                            ),
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                        child: Image(
                        image: AssetImage('assets/images/ps4.png'),
                        fit: BoxFit.fill,
                    ),
                      )
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/beachIcon.png'),
                            height: 80,
                          ),
                          Text(
                            'Beach',
                            style: gridTextStyle,
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned.fill(
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                        child: Image(
                          image: AssetImage('assets/images/ps2.png'),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/themeParkIcon.png'),
                            height: 80,
                          ),
                          Text(
                            'Theme Park',
                            style: gridTextStyle,
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
            Container(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                      child: Image(
                        image: AssetImage('assets/images/ps3.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/adventureIcon.png'),
                            height: 80,
                          ),
                          Text(
                            'Adventure',
                            style: gridTextStyle,
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder:(context){
                      return pontianLeisurePage();
                    }
                  )
                );
              },
              child: Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                        child: Image(
                          image: AssetImage('assets/images/ps5.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/leisureIcon.png'),
                              height: 80,
                            ),
                            Text(
                              'Leisure',
                              style: gridTextStyle,
                            ),
                          ],
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
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
                      child: Image(
                        image: AssetImage('assets/images/ps6.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('assets/images/landmarkIcon.png'),
                            height: 80,
                          ),
                          Text(
                            'Landmark',
                            style: gridTextStyle,
                          ),
                        ],
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
