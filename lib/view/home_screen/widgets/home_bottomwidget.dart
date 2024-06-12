import 'package:flutter/material.dart';

class HomeBottomWidget extends StatelessWidget {
  const HomeBottomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          latestTestSSeries("Exam 102- Biology",Colors.pinkAccent),
          latestTestSSeries("Exam 103- Chemistry",Colors.greenAccent),
          latestTestSSeries("Exam 104- Physics",Colors.purpleAccent),
         
        ],
      ),
    );
  }

  Container latestTestSSeries(String title,Color color) {
    return Container(
      margin: EdgeInsets.only(left: 16),
      height: 100,
      width: 160,
      decoration: BoxDecoration(
        color:color ,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(
            "10 questions  120 mins",
            style: TextStyle(color: Colors.white),
          ),
          Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Center(child: Text("Attempt Now")),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}