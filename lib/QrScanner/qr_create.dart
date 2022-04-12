import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCreate extends StatefulWidget {
  @override
  _QRCreateState createState() => _QRCreateState();
}

class _QRCreateState extends State<QRCreate> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infant QrCode Generator'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 200,
                backgroundColor: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              buildTextField(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(BuildContext context) => TextField(
        controller: controller,
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        decoration: InputDecoration(
            hintText: 'Enter the Data',
            hintStyle: const TextStyle(color: Colors.grey),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.lightBlueAccent)),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: Color.fromARGB(255, 31, 109, 145)),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  color: Theme.of(context).bottomAppBarColor,
                  onPressed: () => setState(() {}),
                  icon: const Icon(
                    Icons.done,
                    size: 30,
                    color: Colors.blue,
                  )),
            )),
      );
}
