import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AuthButton extends StatelessWidget {
  String? title = "";
  void Function()? onTap;
  AuthButton({Key? key, required this.title ,  required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Material(
          color: const Color(0xFF2C2C2C),
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            splashColor: const Color.fromARGB(255, 213, 213, 213),
            onTap: onTap!,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 77,
                    child: Text(
                      title! ,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
