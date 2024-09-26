import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jobhunt/constant/google.dart';
import 'package:jobhunt/pages/registraction.dart';
import 'package:lottie/lottie.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 10),
            () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (builder) => RegistrationPage()),
                (route) => false));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/image/logo1.png"),
                        fit: BoxFit.cover)),
              ),
              Lottie.asset('assets/animation/splash.json'),
              RichText(
                text: TextSpan(
                    style: myStyle(26, primaryColor, FontWeight.bold),
                    children: [
                      TextSpan(
                        text: "Job",
                      ),
                      TextSpan(
                          text: "Hunt",
                          style: myStyle(26, Colors.orange, FontWeight.bold)),
                      TextSpan(
                        text: "Go!",
                        style: myStyle(26, Colors.blue, FontWeight.bold),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
