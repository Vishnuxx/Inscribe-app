import 'package:flutter/material.dart';
import 'package:inscribe/Auth/components/auth_button.dart';
import 'package:inscribe/Auth/components/auth_input_field.dart';
import 'package:inscribe/Auth/components/auth_link.dart';

class LoginScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // Generated code for this HomePage Widget...
        Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Login", style: TextStyle(fontSize: 28)),
              const SizedBox(
                height: 100,
              ),
              AuthInputField(
                  hintTitle: "Email",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name),
              Container(
                width: 10,
                height: 20,
                decoration: const BoxDecoration(),
              ),
              AuthInputField(
                  hintTitle: "Password",
                  controller: TextEditingController(),
                  keyboardType: TextInputType.name),
              Container(
                width: 10,
                height: 100,
                decoration: const BoxDecoration(),
              ),
              AuthButton(
                title: "Login",
                onTap: (() {
                  Navigator.popAndPushNamed(context, "/home");
                }),
              ),
              SizedBox(height: 50),
              Center(
                  child: LinkButton(
                text: "Dont have an account? signup",
                onTap: () {
                  print("sk");
                  Navigator.popAndPushNamed(context, "/signup");
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
