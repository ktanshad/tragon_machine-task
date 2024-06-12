import 'package:flutter/material.dart';

class HomeTopWiget extends StatelessWidget {
  const HomeTopWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 121, 79, 177),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Good Morning!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  Text("John",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20))
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 65,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "10",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(255, 255, 172, 47)),
                        ),
                        Image.asset(
                          "assets/doller.png",
                          height: 30,
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/profile.jpeg"),
                    radius: 25,
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 70,
            width: 350,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 242, 242),
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selected Course",
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      const Text(
                        "Montessori",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 35,
                    width: 90,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 121, 79, 177),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Change",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.compare_arrows_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}