import 'package:flutter/material.dart';

class HomeCenterWidget extends StatelessWidget {
  const HomeCenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            eduResources("Exam", "assets/exam.png", Colors.blue),
            eduResources("Practice", "assets/practise.png", Colors.orange),
            eduResources("Materials", "assets/materials.png", Colors.amberAccent),
          ],
        ),
        SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'See All',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            courses('KTET', "assets/ktet.png", Color.fromRGBO(79, 212, 211, 1.0)),
            courses('LP/UP/HST', "assets/ktet.png", Color(0xFFFFE285)),
            courses('SET', "assets/set.png", Color(0xFFEDB26A)),
            courses('NET', "assets/net.png", Color(0xFFFBADAE)),
            courses('Montessori', "assets/montessori.png", Color(0xFFB798FC)),
            courses('Crash Course', "assets/crashcourse.png", Color(0xFFF955A6)),
          ],
        ),
        Container(
          height: 110,
          width: 340,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Practice With Previous Year", style: TextStyle(fontSize: 16)),
                    Text(" Question Papers", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
              Image.asset("assets/practiceprevious.png", height: 100, width: 90),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.yellow[100],
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ],
    );
  }

  Container eduResources(String title, String image, Color color) {
    return Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image, height: 40, width: 40),
          Text(title),
        ],
      ),
    );
  }

  Column courses(String title, String image, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: color,
          child: Image.asset(image),
        ),
        const SizedBox(height: 5),
        Text(title, textAlign: TextAlign.center),
      ],
    );
  }
}

