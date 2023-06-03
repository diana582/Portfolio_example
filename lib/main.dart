import 'package:flutter/material.dart';
import 'package:network_image/network_image.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              
              child: Container(
                color: Color.fromARGB(255, 202, 53, 53),
                // Add any widgets you want in the blank portion here
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hi, I am Diana Dcruz',
                      style: GoogleFonts.ubuntu(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      child: SizedBox(
                        height: 200,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 164, 238, 28),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Computer Science Engineering student\nFlutter Developer',
                                        style: GoogleFonts.ubuntu(fontSize: 20),
                                      ),
                                      SizedBox(height: 50),
                                      ElevatedButton(
                                        onPressed: () {
                                          // Add button functionality here
                                        },
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.black,
                                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                          textStyle: TextStyle(fontSize: 18),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                        child: Text('Click to know more -->'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Image.network(
                                'https://st2.depositphotos.com/1036149/10097/i/600/depositphotos_100972090-stock-photo-fun-cartoon-superhero.jpg',
                                width: 180,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Read more',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                        'My Projects',
                                        style: GoogleFonts.ubuntu(fontSize: 20),
                                      ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color.fromARGB(255, 103, 174, 232),),
                                width: 550,
                                height: 250,
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: Text(
                                        'My Hobbies',
                                        style: GoogleFonts.ubuntu(fontSize: 20),
                                      ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                
                                color: Color.fromARGB(255, 207, 205, 205),),
                                height: 150,
                                width: 550,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                        'My Skills',
                                        style: GoogleFonts.ubuntu(fontSize: 20),
                                      ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                   color: Color.fromARGB(255, 234, 107, 98),
                                ),
                               
                                height: 100,
                                width: 550,
                              ),
                              SizedBox(height: 20),
                              Container(
                                child: Center(
                                  child: Text(
                                          'My Internships',
                                          style: GoogleFonts.ubuntu(fontSize: 20),
                                        ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 241, 226, 91),),
                                height: 300,
                                width: 550,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 140),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
