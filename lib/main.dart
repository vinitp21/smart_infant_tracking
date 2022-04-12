import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:smart_infant_tracking/Auth/login.dart';
import 'package:smart_infant_tracking/Auth/register.dart';
import 'package:smart_infant_tracking/Auth/welcome.dart';
import 'package:smart_infant_tracking/QrScanner/qr_create.dart';
import 'package:smart_infant_tracking/QrScanner/qr_scan.dart';
import 'package:smart_infant_tracking/bluetooth/bluetooth.dart';
import 'package:smart_infant_tracking/constants/AppPages.dart';
import 'package:smart_infant_tracking/constants/theme.dart';
import 'package:smart_infant_tracking/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Smart Infant Tracking',
      initialRoute: AppPages.WelcomePage,
      theme: ThemeClass.buildTheme(context),
      getPages: [
        GetPage(
          name: AppPages.WelcomePage,
          page: () => const WelcomePage(),
        ),
        GetPage(
          name: AppPages.LoginPage,
          page: () => const LoginPage(),
        ),
        GetPage(
          name: AppPages.HomePage,
          page: () => const HomePage(),
        ),
        GetPage(
          name: AppPages.RegisterPage,
          page: () => const RegisterPage(),
        ),
        GetPage(
          name: AppPages.QrCreatePage,
          page: () => QRCreate(),
        ),
        GetPage(
          name: AppPages.QrScanPage,
          page: () => const QrScan(),
        ),
        GetPage(
          name: AppPages.BluetoothPage,
          page: () => BluetoothScreen(),
        ),
      ],
    );
  }
}
