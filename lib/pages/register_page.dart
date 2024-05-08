// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_button.dart';
import 'package:flutter_application_fooddeliveryapp/components/my_textfileld.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  // //register met
  // void register() async {
  //   //get auth
  //   final _authService = AuthService();
  //   //check if passord ckjhdskjh---> create user
  //   if (passwordController.text == confirmpasswordController.text) {
  //     //try creating user
  //     try {
  //       await _authService.signInWithEmailPassword(
  //         emailController.text,
  //         passwordController.text,
  //       );
  //     }
  //     //display any errors
  //     catch (e) {
  //       showDialog(
  //         context: context,
  //         builder: (context) => AlertDialog(
  //           title: Text(e.toString()),
  //         ),
  //       );
  //     }
  //   }
  //   //if pass dont match ---> show errros
  //   else {
  //     showDialog(
  //       context: context,
  //       builder: (context) => const AlertDialog(
  //         title: Text("Password don`t match!"),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.lock_open_rounded,
                size: 100,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),

              //message.app slogan
              Text(
                "Let`s create an account for you",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 25),

              //email textfield
              MyTextField(
                controller: emailController,
                hintText: "Email",
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //password textfield
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(height: 10),

              MyTextField(
                controller: confirmpasswordController,
                hintText: "Confirm password",
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //sign up button
              MyButton(
                text: "Sign up",
                onTap: () {},
              ),

              const SizedBox(height: 25),

              //alredy have an account? login here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Login now",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
