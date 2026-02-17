import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottomNavBar.dart';
import 'package:date_app/testfile.dart';

import 'package:flutter_svg/flutter_svg.dart';
class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        title:
        Row(
          children: [
            Text('Spark',
              style: GoogleFonts.calistoga(
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),
            ),
            SizedBox(width: 150),
            IconButton(
              icon: SvgPicture.asset(
                  'assets/icons/bell-solid-full.svg',
                  height :35
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  CardExample(), // your page widget
                  ),
                );
              },
            ),

            //SizedBox(width: 2),
            IconButton(
              icon: SvgPicture.asset(
                  'assets/icons/gear-solid-full.svg',
                  height :33
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  CardExample(), // your page widget
                  ),
                );
              },
            ),
          ],
        ),

      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/icons/fire-flame-curved-solid-full.svg',
                height: 35,
              ),
              SizedBox(
                width: 20,
              ),
              Text('Trending Now',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              SizedBox(
                height: 220,
                width: 140,
                child:Card(
                  color: Colors.deepOrangeAccent,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Makes it a perfect rectangle
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                    ],
                  ),
                ),
              ) ,
              SizedBox(
                height: 220,
                width: 140,
                child:Card(
                  color: Colors.deepOrangeAccent,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Makes it a perfect rectangle
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                    ],
                  ),
                ),
              ) ,
              SizedBox(
                height: 220,
                width: 140,
                child:Card(
                  color: Colors.deepOrangeAccent,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Makes it a perfect rectangle
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                    ],
                  ),
                ),
              ) ,
            ],
          ),
        ],
      )










    );
  }
}
