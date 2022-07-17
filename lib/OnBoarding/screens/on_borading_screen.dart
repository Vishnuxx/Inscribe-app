import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 1000 , ) , (() {
       Navigator.popAndPushNamed(context, '/login');
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
        Text(
                  "Inscribe",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                  ),
              ),
              SizedBox(height: 8),
              Text(
                  "Notestaking made Simple",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.normal
                  ),
      )]),
      ),
    );
  }
}
