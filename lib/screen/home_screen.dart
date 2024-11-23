import 'package:education_application/screen/course_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class home_screen extends StatelessWidget {
   home_screen({super.key});

//creating static data in lists

List catName =[
  "category",
  'classes',
  'free course',
  'bookstore',
  'live course',
  'leader Board'
]; 

List<Color> catColors = [
  Color.fromARGB(255, 149, 165, 236),
  Color.fromARGB(255, 178, 245, 130),
  Color.fromARGB(255, 207, 137, 239),
  Color.fromARGB(255, 239, 119, 201),
  Color.fromARGB(255, 88, 157, 230),
  Color.fromARGB(255, 81, 132, 227),
];

List<Icon> catIcons = [
  Icon(Icons.category, color: Colors.white,size: 30,),
  Icon(Icons.video_library, color: Colors.white,size: 30,),
  Icon(Icons.assignment, color: Colors.white,size: 30,),
  Icon(Icons.store, color: Colors.white,size: 30,),
  Icon(Icons.play_circle_fill, color: Colors.white,size: 30,),
  Icon(Icons.emoji_events, color: Colors.white,size: 30,),
];

List imagList = [
  'Flutter',
  'React Native',
  'python',
  'c#',
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 236, 129, 129),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard,size: 30,
                    color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 3,bottom: 15),
                child: Text(
                  "Hello, programmer buddies.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white,
                  ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search here",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Column(children: [
            GridView.builder(
              itemCount: catName.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.1,
              ),
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: catColors[index],
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: catIcons[index],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      catName[index],
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    )
                  ],
                );
              },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  "Courses",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 7, 7, 7)
                  ),
                  ),
                  Text(
                  "see All",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 236, 129, 129)
                  ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GridView.builder(
                itemCount: imagList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 240),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  ), 
                  itemBuilder: (context, intex){
                    
                    return InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                               course_screen(imagList[intex]),
                          ));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 236, 129, 129),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Image.asset(
                                "images/${imagList[intex]}.png",
                                width: 90,
                                height: 90,
                              ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                imagList[intex],
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.7),
                                ),
                              ),
                             SizedBox(height: 6),
                             Text("55 video",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.5),
                             ),) 
                          ],
                        ),
                      ),
                    );
                  }
                  ),
          ],
          ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor:  Color.fromARGB(255, 236, 129, 129),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home' ),
        BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'courses' ),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'wishlist' ),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'account' ),
      ],
      
      ),
    );
  }
}