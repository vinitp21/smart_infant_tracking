import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_infant_tracking/constants/AppPages.dart';
import 'package:smart_infant_tracking/constants/uiconstants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Container(
      decoration: BoxDecoration(
         color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                        color: Color.fromARGB(255, 31, 28, 173),
                      ),
                      children:const [
                        TextSpan(text: 'Infant', style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 37, 32, 58),)),
                      ]
                ),
                
              ),
              const SizedBox(height: 30),
              SizedBox(height: MediaQuery.of(context).size.height / 50),
                formWidget(context),
                SizedBox(height: MediaQuery.of(context).size.height / 50),
              buttonWidget(context), 
              
            ]),
      ),),
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
              Get.toNamed(AppPages.HomePage);
          },
          style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 8, 34, 90),
             
              textStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          child: Text('Regester',
              style: Theme.of(context).primaryTextTheme.button!.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: const Color.fromARGB(255, 253, 250, 255)))),
    ),
  );
}

Widget formWidget(BuildContext context) {
  return Container(
    child: Form(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Align(alignment: Alignment.topLeft, child: Text('UserName',style:TextStyle(fontSize: 18,color:Color.fromARGB(255, 8, 34, 90)))),
        const SizedBox(height:5),
        emailInputWidget("Username", false, "Email", 'Email', (value) {}),
        SizedBox(
          height: UIConstants.fitToHeight(18, context),
        ),
         const Align(alignment: Alignment.topLeft, child: Text('Email address',style:TextStyle(fontSize: 18,color:Color.fromARGB(255, 8, 34, 90)))),
        const SizedBox(height:5),
        emailInputWidget("Username", false, "Email", 'Email', (value) {}),
        SizedBox(
          height: UIConstants.fitToHeight(18, context),
        ),
         const Align(alignment: Alignment.topLeft, child: Text('Password',style:TextStyle(fontSize: 18,color:Color.fromARGB(255, 8, 34, 90)))),
         const SizedBox(height:5),
        passInputWidget("Password", true, "Password", 'Password', (value) {}),
      ],
    )),
  );
}

Widget emailInputWidget(
    String validation, bool, String label, String hint, save) {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    style: const TextStyle(fontSize: 15.0, color: Color(0xff9FA0AD)),
    decoration: const InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(255, 226, 226, 226),
      hintText: '',
      hintStyle: TextStyle(fontSize: 15.0, color: Color(0xff9FA0AD)),
      labelStyle: TextStyle(fontSize: 15.0, color: Color(0xff9FA0AD)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Color.fromARGB(255, 8, 34, 90)),
         ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 8, 34, 90)),
         ),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 8, 34, 90)),
          ),
    ),
    obscureText: bool,
    onSaved: save,
  );
}

Widget passInputWidget(
  String validation,
  bool,
  String label,
  String hint,
  save,
) {
  return TextFormField(
    
    style: const TextStyle(fontSize: 15.0, color: Color(0xff9FA0AD)),
    decoration: const InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(255, 226, 226, 226),
      hintText: '',
      hintStyle: TextStyle(fontSize: 15.0, color: Color(0xff9FA0AD)),
      labelStyle: TextStyle(fontSize: 15.0, color: Color(0xff9FA0AD)),
      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Color.fromARGB(255, 8, 34, 90)),
         ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 8, 34, 90)),
         ),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 8, 34, 90)),
          ),
    ),
    obscureText: true,
    onSaved: save,
  );
}
