import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image : AssetImage('images/alia.jpg'),
          fit: BoxFit.cover,
      ),
    ),
      child: Padding(
        padding: const EdgeInsets.only(top :400.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('The best',style: TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
              textAlign: TextAlign.center,
            ),
            Text('world models',style: TextStyle
              (
              fontSize: 40,
              fontWeight: FontWeight.w800,
              color: Colors.white
            ),
            textAlign: TextAlign.center,),
            SizedBox(height: 5,),
            Text('Is the easiest way to find',style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
            SizedBox(height: 5,),
            Text('A model for your event',style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
             SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.fromLTRB(150,0,150,0),
               child: RawMaterialButton(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
               ),
           constraints: BoxConstraints.tightFor(width: 56,height: 66),
           fillColor: Colors.white,
               child: Icon(Icons.arrow_forward,color: Colors.black,),
               onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>Second()));
               },

                ),
  ),

          ],
        ),
      ),
    )
    );
  }
}


