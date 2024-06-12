import 'package:flutter/material.dart';
import 'package:tragon_machinetask/view/home_screen/home_screen.dart';
import 'package:tragon_machinetask/view/mycourses_screen/mycourses_screen.dart';
import 'package:tragon_machinetask/view/profile_screen/profile_screen.dart';
import 'package:tragon_machinetask/view/analysis_screen/analysis_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab=0;

  final List<Widget>screens=[
    HomeScreen(),
    MyCoursesScreen(),
    AnalysisScreen(),
    ProfileScreen()
  ];

  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen=HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
       child: currentScreen),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          
        },
   
      ),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
           bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                          splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentScreen=HomeScreen();
                            currentTab=0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.home,color: currentTab==0?Colors.blue:Colors.grey,),
                            Text("Home",
                            style: TextStyle(
                              color: currentTab==0?Colors.blue:Colors.grey
                            ),)
                          ],
                        ),
                        ),


                         MaterialButton(
                          splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentScreen=MyCoursesScreen();
                            currentTab=1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.library_books,color: currentTab==1?Colors.blue:Colors.grey,),
                            Text("my corses",
                            style: TextStyle(
                              color: currentTab==1?Colors.blue:Colors.grey
                            ),)
                          ],
                        ),
                        )
                    ],
                  ),




                     Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentScreen=AnalysisScreen();
                            currentTab=3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.chrome_reader_mode,color: currentTab==3?Colors.blue:Colors.grey,),
                            Text("Analysis",

                            style: TextStyle(
                              color: currentTab==3?Colors.blue:Colors.grey
                            ),)
                          ],
                        ),
                        ),


                         MaterialButton(
                          splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                        minWidth: 40,
                        onPressed: (){
                          setState(() {
                            currentScreen=ProfileScreen();
                            currentTab=4;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.portrait,color: currentTab==4?Colors.blue:Colors.grey,),
                            Text("Profile",
                            style: TextStyle(
                              color: currentTab==4?Colors.blue:Colors.grey
                            ),)
                          ],
                        ),
                        )
                    ],
                  )

                ],
              ),
            ),
           ),

    );
  }
}