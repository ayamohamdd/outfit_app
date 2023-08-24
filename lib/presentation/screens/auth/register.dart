import 'package:flutter/material.dart';
import 'package:store_app/presentation/screens/auth/login.dart';
import 'package:store_app/shared/components/button.dart';
import 'package:store_app/shared/components/form.dart';
import 'package:store_app/shared/constants/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // Start Form Variables
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  String? selectedPhoneCode = '';
  // End Form Variables

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Transform.translate(
                offset: const Offset(-40, -90),
                child: Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(-5, 60),
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
                offset: const Offset(0, -140),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/register.png',
                        width: 150,
                        height: 130,
                      ),
                      const Text(
                        ' Welcome Onboard !',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.fontColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 30.0, right: 30.0, bottom: 0),
                          child: Column(
                            children: [
                              defaultFormField(
                                controller: name,
                                type: TextInputType.name,
                                label: 'Enter your name',
                              ),
                              const SizedBox(
                                height: 18.0,
                              ),
                              defaultFormField(
                                controller: email,
                                type: TextInputType.emailAddress,
                                label: 'Enter your email',
                              ),
                              const SizedBox(
                                height: 18.0,
                              ),
                              defaultFormField(
                                controller: password,
                                type: TextInputType.visiblePassword,
                                label: 'Enter your Password',
                                isPassword: true,
                              ),
                              const SizedBox(
                                height: 18.0,
                              ),
                              defaultFormField(
                                controller: confirmPassword,
                                type: TextInputType.visiblePassword,
                                label: 'Confirm Password',
                                isPassword: true,
                              ),
                              const SizedBox(
                                height: 18.0,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: BoxDecoration(
                                    color: AppColors.formColor,
                                    boxShadow: const [
                                      BoxShadow(
                                          color: AppColors.elevColor,
                                          blurRadius: 3),
                                    ],
                                    borderRadius: BorderRadius.circular(50)),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 20.0),
                                      child: defaultPhoneFormField(
                                          label: 'Enter your phone',
                                          onChangeMethod: (){},
                                          cursorColor: AppColors.buttonColor,
                                          bottomPadding: 13.0,
                                          leftPadding: -10.0,
                                          ),
                                    ),
                                    Positioned(
                                        left: 108,
                                        top: 8,
                                        bottom: 8,
                                        child: Container(
                                          height: 40,
                                          width: 1,
                                          color: AppColors.elevColor,
                                        )),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              defaultButton(
                                text: 'Register',
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
                                  const Text("Already have an account?"),
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen()));
                                      },
                                      child: Transform.translate(
                                        offset: const Offset(-5, 0),
                                        child: const Text(
                                          'Log in',
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
