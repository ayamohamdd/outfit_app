import 'package:flutter/material.dart';
import 'package:store_app/presentation/screens/onboarding.dart';
import 'package:store_app/presentation/screens/product_details.dart';
import 'package:store_app/presentation/screens/products.dart';
import 'package:store_app/presentation/screens/splash.dart';

import 'shared/constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case productsScreen:
        return MaterialPageRoute(builder: (_) => const ProductsScreen());
      case productsDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
    }
    return null;
  }
}
