import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LinkButton extends StatelessWidget {
  void Function()? onTap;
  String text = "";
  Color? color = const Color(0xff000000);

  LinkButton({Key? key, required this.text, this.color , required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text,
        style: TextStyle(color: color , decoration: TextDecoration.underline )
      ),
      onTap: onTap,
    );
  }
}
