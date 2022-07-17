import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchBar extends StatelessWidget {
  TextEditingController controller;
  String? hintTitle;
  TextInputType keyboardType = TextInputType.name;

  SearchBar(
      {Key? key,
      required this.controller,
      required this.keyboardType,
      this.hintTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (keyboardType == TextInputType.visiblePassword) {
      return Container(
        height: 40,
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
                  fontSize: 15,
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
        height: 40,
        decoration: BoxDecoration(
            // ignore: prefer_const_constructors
            color: Color.fromARGB(255, 235, 236, 240),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    autofocus: false,
                    decoration: InputDecoration.collapsed(
                      hintText: hintTitle,
                      hintStyle: const TextStyle(
                        fontSize: 13,
                        color: Colors.black26,
                      ),
                    ),
                    keyboardType: keyboardType,
                  ),
                ),
                SizedBox(width: 10,),
                Icon(Icons.search), 
              ],
            ),
          ),
        ),
      );
    }
  }
}
