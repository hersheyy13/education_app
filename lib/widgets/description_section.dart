

import 'package:flutter/material.dart';

class descriptionsection extends StatelessWidget {
  const descriptionsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.7),
          ),
          textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text(
              "course length :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
              Icon(
              Icons.timer,
              color: const Color.fromARGB(255, 236, 129, 129),
            ),
            SizedBox(width: 5,),
            Text(
              "26 Hour",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            ],
            
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text(
              "Rating: ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
              Icon(
              Icons.star,
              color: Color.fromARGB(255, 236, 223, 129),
            ),
            SizedBox(width: 5,),
            Text(
              "4.5",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            ],
            
          )
        ],
      ),
    );
  }
}