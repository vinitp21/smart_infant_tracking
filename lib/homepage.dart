import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_infant_tracking/calculatorCard.dart';
import 'package:smart_infant_tracking/constants/AppPages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text('Smart Infant Tracking'),),
        body:Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: Center(
                    child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: 4,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: [
                          CategoryCard(
                           
                            title: "Bluetooth",
                            press: () {
                               Get.toNamed(AppPages.BluetoothPage);
                            },
                          ),
                          CategoryCard(
                            title: "Qr Scan",
                            press: () {
                              Get.toNamed(AppPages.QrScanPage);
                            },
                          ),
                           CategoryCard(
                            
                            title: "Qr Create",
                            press: () {
                              Get.toNamed(AppPages.QrCreatePage);
                            },
                          ),
                        ]),
                  ),
                ),
             
    );
  }
}
