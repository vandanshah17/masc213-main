import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:masc213/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isSpinning = true;

  void stopSpin() async {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
      setState(() {
        _isSpinning = false;
        print("stopped spining");
        // Here you can write your code for open new view
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    stopSpin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF151515),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 250, child: Image.asset("assets/logo_png.png")),
                SizedBox(height: 20),
                Text(
                  "MASC-213",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 30),
                if (_isSpinning)
                  CupertinoActivityIndicator(
                    color: Colors.white,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
