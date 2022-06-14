import 'package:flutter/material.dart';

class OAuthButton extends StatelessWidget {
  Image image;
  void Function() onTap;
  OAuthButton({Key? key, required this.image , required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.all(12),
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: image,
        ),
      ),
    );
  }
}
