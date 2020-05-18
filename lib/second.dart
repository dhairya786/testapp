import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 55.0),
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  '153K',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'FOLLOWERS',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('images/dp.jpg'),
              radius: 60,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: <Widget>[
                Text(
                  '734',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  'PHOTOS',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Text(
            'ALIA BHATT',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.location_on,
                size: 30,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Mumbai', style: TextStyle(color: Colors.grey))
            ],
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            constraints: BoxConstraints.tightFor(width: 175, height: 57),
            fillColor: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'FOLLOW',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          RawMaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            constraints: BoxConstraints.tightFor(width: 175, height: 57),
            fillColor: Colors.white,
            child: Text(
              'MESSAGE',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            onPressed: () {},
          ),
        ]),
        SizedBox(
          height: 5,
        ),
        Expanded(
            child: DefaultTabController(
          length: 4,
          child: Scaffold(
              appBar: new TabBar(
                labelColor: Colors.grey,
                indicatorColor: Colors.grey.shade800,
                tabs: [
                  Tab(text: ('PORTFOLIO')),
                  Tab(text: ('VIDEOS')),
                  Tab(text: ('LIFESTYLE')),
                  Tab(text: ('COLLABORATION'))
                ],
              ),
              body: TabBarView(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal :8.0),
                      child: Row(
                        children: <Widget>[

                          Expanded(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image(
                                  image: AssetImage('images/alia2.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                          ),
                          SizedBox(width: 5,),

                          
                          Column(
                            children: <Widget>[
                              Expanded(
                                  child: Row(
                                children: <Widget>[
                                  Text(
                                    'View All',
                                    style: TextStyle(color: Colors.grey.shade800),
                                  ),
                                  Icon(Icons.arrow_forward),
                                ],
                              )),
                              Expanded(
                                flex: 2,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image(
                                      image: AssetImage('images/alia5.jpg'),
                                      fit: BoxFit.fill,
                                    ))),
                              Expanded(
                                  flex: 2,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image(
                                        image: AssetImage('images/alia1.jpeg'),
                                      ))),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.add),
                  Icon(Icons.close),
                  Icon(Icons.phone),
                ],
              )),
        )),
      ]),
    ));
  }
}
