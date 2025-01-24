import 'package:comparegrocery/routes/app_routes.dart';
import 'package:comparegrocery/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(CompareGroceryApp());
}

class CompareGroceryApp extends StatelessWidget {
  const CompareGroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orintation, deviceType) {
        return MaterialApp(
          theme: theme,          
          title: "Compare Grocery",
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
          builder: (context, child) {
            return MediaQuery(
              // Adjust MediaQuery properties if needed (e.g., text scaling).
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(1.0),
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
