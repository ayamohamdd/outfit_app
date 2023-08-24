import 'package:flutter/material.dart';
import 'package:store_app/presentation/screens/auth/register.dart';
import 'package:store_app/shared/components/button.dart';
import 'package:store_app/shared/components/form.dart';
import 'package:store_app/shared/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Start Form Variables
  final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();
  // End Form Variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Transform.translate(
                offset: const Offset(-40, -80),
                child: Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(-5, 50),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: AppColors.alignColor)),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(-80, 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(80),
                                color: AppColors.alignColor)),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: const Offset(0, -50),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const Text(
                        '  Welcome Back !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.fontColor),
                      ),
                      Image.asset(
                        'assets/images/login.png',
                        width: 230,
                        height: 230,
                      ),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 30.0, right: 30.0, bottom: 0),
                          child: Column(
                            children: [
                              defaultFormField(
                                controller: email,
                                type: TextInputType.emailAddress,
                                label: 'Enter your email',
                              ),
                              const SizedBox(
                                height: 17.0,
                              ),
                              defaultFormField(
                                controller: password,
                                type: TextInputType.visiblePassword,
                                label: 'Enter your Password',
                                isPassword: true,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Password",
                                  style:
                                      TextStyle(color: AppColors.buttonColor),
                                ),
                              ),
                              defaultButton(
                                text: 'Login',
                                radius: 15.0,
                                width: 300,
                                onPressed: () {},
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: AppColors.formColor,
                                    child: Image.asset(
                                        'assets/images/googleicon.png'),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  CircleAvatar(
                                    backgroundColor: AppColors.formColor,
                                    child: Image.asset(
                                      'assets/images/Facebook_icon.svg.webp',
                                      height: 30.0,
                                      width: 30,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Don't have an account?"),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const RegisterScreen()));
                                      },
                                      child: Transform.translate(
                                        offset: const Offset(-5, 0),
                                        child: const Text(
                                          'Sign up',
                                          style: TextStyle(
                                              color: AppColors.buttonColor),
                                        ),
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
