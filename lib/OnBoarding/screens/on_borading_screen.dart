import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

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
