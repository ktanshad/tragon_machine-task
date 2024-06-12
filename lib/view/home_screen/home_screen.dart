import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tragon_machinetask/view/home_screen/widgets/home_bottomwidget.dart';
import 'package:tragon_machinetask/view/home_screen/widgets/home_centerwidget.dart';
import 'package:tragon_machinetask/view/home_screen/widgets/home_topwidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeTopWiget(),
            SizedBox(height: 20,),
             HomeCenterWidget(),
             Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5,left: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text( 'Latest Test Series',
                                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                  ),
                ),
                HomeBottomWidget()
              ],
             ),
             
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}