import 'package:flutter/material.dart';

class AuthInputField extends StatelessWidget {
  TextEditingController controller;
  String? hintTitle;
  TextInputType keyboardType = TextInputType.name;

  AuthInputField(
      {Key? key,
      required this.controller,
      required this.keyboardType,
      this.hintTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (keyboardType == TextInputType.visiblePassword) {
      return Container(
        
        height: 55,
        decoration: BoxDecoration(
            color: const Color(0xfff2f3f6),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: TextField(
              controller: controller,
              autofocus: false,
              decoration: InputDecoration.collapsed(
                hintText: hintTitle,
                hintStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black26,
                ),
              ),
              keyboardType: keyboardType,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
          ),
        ),
      );
    } else {
      return Container(
        
        height: 55,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 236, 240),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25 , right: 25),
            child: TextField(
              controller: controller,
              autofocus: false,
              decoration: InputDecoration.collapsed(
                hintText: hintTitle,
                hintStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black26,
                ),
              ),
              keyboardType: keyboardType,
            ),
          ),
        ),
      );
    }
  }
}
