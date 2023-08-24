import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:store_app/presentation/screens/auth/login.dart';
import 'package:store_app/shared/constants/colors.dart';
import 'package:store_app/presentation/screens/onboarding.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../../data/local/cache_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  bool isViewed=false;
  CacheHelper cacheHelper = CacheHelper();
  onboardingRun() async {
    isViewed = await CacheHelper.getData(key: 'onboarding');
    print(isViewed);
    setState(() {});
    return isViewed;
  }

  @override
  Widget build(BuildContext context) {
    onboardingRun();
    return AnimatedSplashScreen(
      splash: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.translate(
              offset: const Offset(0,77),
              child: Lottie.asset(
                'assets/lotties/animation_llgt1x5k.json',
                width: 260,
                height: 330,
              ),
            ),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 100.0,
                fontWeight: FontWeight.bold,
                color: AppColors.backgroundColor,
              ),
              textAlign: TextAlign.center,
              child: Text('Outfit'.toUpperCase(),
              style: const TextStyle(
                        fontFamily: "Poppins",
                      ),
              )
            ),
          ]),
      nextScreen:
          isViewed ? LoginScreen() : const OnboardingScreen(),
      splashIconSize: 550,
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      animationDuration: const Duration(seconds: 2),
      backgroundColor: AppColors.buttonColor,
    );
  }
}
