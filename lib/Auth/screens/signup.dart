import 'package:flutter/material.dart';
import 'package:inscribe/Auth/components/auth_button.dart';
import 'package:inscribe/Auth/components/auth_input_field.dart';
import 'package:inscribe/Auth/components/auth_oauth_buttons.dart';

class SignUpScreen extends StatelessWidget {
  final input_vertical_spacing = 25.0;
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "SignUp",
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: "Open Sans",
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 100),
            AuthInputField(
                hintTitle: "Name",
                controller: TextEditingController(),
                keyboardType: TextInputType.name),
            SizedBox(height: input_vertical_spacing),
            AuthInputField(
                hintTitle: "Email",
                controller: TextEditingController(),
                keyboardType: TextInputType.name),
            SizedBox(height: input_vertical_spacing),
            AuthInputField(
                hintTitle: "Password",
                controller: TextEditingController(),
                keyboardType: TextInputType.name),
            SizedBox(height: input_vertical_spacing),
            AuthInputField(
                hintTitle: "Confirm Password",
                controller: TextEditingController(),
                keyboardType: TextInputType.name),
            SizedBox(height: input_vertical_spacing * 6),
            AuthButton(
              onTap: (() {
                print("sjk");
              }),

              
            ),

            
            SizedBox(height: input_vertical_spacing),

           Row(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               OAuthButton(
                  image: Image.asset("icons/Google.png"),
                  onTap: () {},
                ),
                const SizedBox(width: 20,),
                OAuthButton(
                  image: Image.asset("icons/Apple.png"),
                  onTap: () {},
                ),
                 const SizedBox(
                  width: 20,
                ),
                OAuthButton(
                  image: Image.asset("icons/Facebook.png"),
                  onTap: () {},
                )
             ],
           )
           
            
          ],
        ),
      ),
    ));
  }
}
