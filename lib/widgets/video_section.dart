

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class videosection extends StatelessWidget {
   videosection({super.key});

  List VideoList = [
    'Introduction to flutter',
    'installing flutter on window',
    'setup emulator on windows',
    'creating our first app',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: VideoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0? const Color.fromARGB(255, 236, 129, 129) 
              : const Color.fromARGB(255, 236, 129, 129) . withOpacity(0.6),
              shape: BoxShape.circle,
              
              ),
              child: Icon(Icons.play_arrow_rounded,
              color: Colors.white, size: 30,
              ),
          ),
          title: Text(VideoList[index]),
          subtitle: Text("20 min 50 sec"),
        );
      },
    );
  }
}