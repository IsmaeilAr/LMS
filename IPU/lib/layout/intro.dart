import 'package:flutter/material.dart';
import 'package:ipu/shared/styles/styles.dart';
import 'login.dart';


class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    _navigateToHome(2000);

  }
  _navigateToHome(int ms) async {
    await Future.delayed(Duration(milliseconds: ms),() {
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/intro_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo.png'),
                   Center(
                     child: Padding(
                       padding: const EdgeInsets.only(top: 12),
                       child: Text('ITTIHAD PRIVATE UNIVERSITY',
                  style: whiteTitleStyle,
                  ),
                     ),
                   )
                ],
              )
          ),
        ),
      ),
    );

  }
}
