import 'package:flutter/material.dart';
import 'package:masc213/screens/components_screen.dart';
import 'package:masc213/screens/group_member_screen.dart';
import 'package:masc213/screens/technologies_used.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151515),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 65),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                    height: 50, child: Image.asset("assets/logo_png.png")),
                SizedBox(width: 30),
                Text(
                  "MASC-213",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Divider(
              color: Color(0xFF838383),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                //color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  //clipBehavior: cLIP.,
                  child: Image.asset(
                      fit: BoxFit.fill, "assets/home_photo_2.HEIC")),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                  "About MASC-213",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "A Mechanical Arm which is controlled by hand gestures. A small scaled version of heavy-duty machinery which are technologically advanced.",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Text(
                  "Prof. Sanket Patel, Vinod Mall",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 35),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GroupMemeberScreen(),
                    ));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 2.5),
                ),
                child: Center(
                  child: Text(
                    "Group member details",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white, width: 2.5),
              ),
              child: Center(
                child: Text(
                  "Demonstration videos",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ComponentsScreen(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2 - 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 2.5),
                    ),
                    child: Center(
                      child: Text(
                        "Components",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TechnologiesUsedScreen(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2 - 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white, width: 2.5),
                    ),
                    child: Center(
                      child: Text(
                        "Technologies",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            // GestureDetector(
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => const TechnologiesUsedScreen(),
            //         ));
            //   },
            //   child: Container(
            //     height: 50,
            //     width: MediaQuery.of(context).size.width,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(30),
            //       border: Border.all(color: Colors.white, width: 2.5),
            //     ),
            //     child: Center(
            //       child: Text(
            //         "Technologies used",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontWeight: FontWeight.w300,
            //           fontSize: 18,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
