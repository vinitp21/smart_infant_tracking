import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_infant_tracking/constants/AppPages.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 200, 199, 224),
          Color.fromARGB(255, 56, 51, 194)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  text: 'Smart',
                  style: Theme.of(context).primaryTextTheme.button!.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                  children: [
                    TextSpan(
                        text: 'Infant',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 37, 32, 58),
                        )),
                  ]),
            ),
            SizedBox(height: 30),
            buttonWidget(context),
            SizedBox(height: 20),
            buttonWidget2(context)
          ]),
    );
  }
}

Widget buttonWidget(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.80,
      height: 50,
      child: ElevatedButton(
          onPressed: () {
            Get.toNamed(AppPages.LoginPage);
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.white,
             
              textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          child: Text('Login',
              style: Theme.of(context).primaryTextTheme.button!.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                  color: Color.fromARGB(255, 8, 34, 90),))),
    ),
  );
}

Widget buttonWidget2(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.80,
        height: 50,
        child: GestureDetector(
          onTap: () {
            Get.toNamed(AppPages.RegisterPage);
          },
          child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(0, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Register Now',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .button!
                          .copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white)),
                ],
              )),
        )),
  );
}
