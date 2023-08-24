import 'package:flutter/material.dart';

import 'app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(StoreApp(appRouter: AppRouter(),));
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key, required this.appRouter});

  final AppRouter appRouter;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins"
      ),
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
