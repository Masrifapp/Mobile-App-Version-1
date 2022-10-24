import 'package:flutter/material.dart';
import 'package:masrif/constants/constants.dart';
import 'package:masrif/shared/widgets/custom_buttom.dart';
import 'package:masrif/shared/widgets/custom_textfield.dart';
import 'package:masrif/views/auth/signup.dart';
import 'package:masrif/views/home/home.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const normalSpace = SizedBox(height: 15);
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
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  normalSpace,
                  CustomButton(
                    title: "Log In",
                    onPress: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (cotext) => const Home()));
                    },
                  ),
                  normalSpace,
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forget Password',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 91, 91),
                                  fontSize: 16,
                                  decoration: TextDecoration.underline),
                            )),
                        const VerticalDivider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 10,
                          endIndent: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (cotext) =>
                                          const SignUpScreen()));
                            },
                            child: const Text(
                              'Create an account',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 92, 91, 91),
                                  fontSize: 16,
                                  decoration: TextDecoration.underline),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
