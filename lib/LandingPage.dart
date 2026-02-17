import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottomNavBar.dart';
import 'package:date_app/testfile.dart';  // Adjust path as needed
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


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
               SizedBox(width: 210),
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
      body: NavigationBarApp()
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}