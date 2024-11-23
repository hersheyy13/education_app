import 'package:education_application/screen/home_screen.dart';
import 'package:flutter/material.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(color:   Color.fromARGB(255, 254, 253, 253)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration( color:  Color.fromARGB(255, 236, 129, 129),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
                ),
                child: 
                Center(child: Image.asset(
                  "images/books.png",
                  width: 300,
                  scale: 0.60,)
                  ),
              )
            ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/ 2.666,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 236, 129, 129),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/ 2.666,
                padding: EdgeInsets.only(top: 40,bottom: 30),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 254, 254),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                  )
                ),
                child: Column(
                  children: [
                    Text("Learning is everything ",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                    ),
                    SizedBox(height: 15),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      "Learning with pleasure with dear programmer, whenever you are",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black.withOpacity(0.6),
                        
                      ),
                      ),
                    ),
                      SizedBox(height: 60,),
                      Material(
                        color: Color.fromARGB(255, 236, 129, 129),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context) => home_screen(),));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical:  15, horizontal: 80),
                              child: Text(
                                "Get start",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 2, 2, 2),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1,
                                ),
                              ),
                          ),
                        ),
                      )
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