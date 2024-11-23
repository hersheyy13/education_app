import 'package:education_application/widgets/description_section.dart';
import 'package:education_application/widgets/video_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class course_screen extends StatefulWidget {
  String imag;
  course_screen(this.imag);
  // const course_screen({super.key});

  @override
  State<course_screen> createState() => _course_screenState();
}

class _course_screenState extends State<course_screen> {
  bool isvideosection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(widget.imag, style: TextStyle(fontWeight: FontWeight.bold,
        letterSpacing: 1),
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 10),
          child: Icon(
            Icons.notifications,
            size: 28,
            color: const Color.fromARGB(255, 236, 129, 129),
          ),
          ),
        ],
      ),
      body: Padding(padding: EdgeInsets.symmetric(
        vertical: 10,horizontal: 20,),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 236, 129, 129),
                image: DecorationImage(
                  image: AssetImage("images/${widget.imag}.png"), 
                  ),
              ),
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,    
                  ),
                  child: Icon(
                    CupertinoIcons.play_circle,
                    
                    color: const Color.fromARGB(255, 236, 129, 129),
                    size: 50,
                  ),
                ), 
              ),
            ),
            SizedBox(height: 15,),
            
              Text(
                "${widget.imag} complete course",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5,),
              Text(
                "55 video",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isvideosection ? 
                    Color.fromARGB(255, 236, 129, 129) .withOpacity(0.6)
                    : Color.fromARGB(255, 236, 129, 129),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {

                        setState(() {
                          isvideosection = true;
                        });
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "videos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isvideosection? 
                    Color.fromARGB(255, 236, 129, 129).withOpacity(0.6)
                    :Color.fromARGB(255, 236, 129, 129),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isvideosection = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            isvideosection ? videosection() : descriptionsection(),
          ],
        ),
        ),
    );
  }
}