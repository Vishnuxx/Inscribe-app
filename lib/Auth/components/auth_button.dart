import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  void Function()? onTap;
  AuthButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Material(
          color: Color(0xFF2C2C2C),
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.circular(15),
          child: InkWell(
            splashColor: Color.fromARGB(255, 213, 213, 213),
            onTap: onTap!,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 77,
                    child: Text(
                      "Signup",
                      style: TextStyle(
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
