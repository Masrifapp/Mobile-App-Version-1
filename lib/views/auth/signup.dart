import 'package:flutter/material.dart';
import 'package:masrif/constants/constants.dart';
import 'package:masrif/shared/widgets/custom_buttom.dart';
import 'package:masrif/shared/widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Masrif',
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'The Halal Way To Halal Wealth',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Form(
              child: Column(
                children: [
                  const CustomTextField(
                    prefixIcon: Icon(
                      Icons.person,
                      color: darkblue,
                    ),
                    hintText: "FullName",
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    prefixIcon: Icon(
                      Icons.email,
                      color: darkblue,
                    ),
                    hintText: "Email",
                  ),
                  const SizedBox(height: 15),
                  const CustomTextField(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: darkblue,
                    ),
                    hintText: "Password",
                  ),
                  const SizedBox(height: 15),
                  const CustomButton(title: 'Sign Up'),
                  const SizedBox(height: 15),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'I have an account already',
                          style: TextStyle(
                              color: Color.fromARGB(255, 92, 91, 91),
                              fontSize: 16,
                              decoration: TextDecoration.underline),
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
