import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final String title;
  final VoidCallback press;
  const CategoryCard({

    required this.title,
   required this.press,
  }) ;

  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size; 
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: size.width,
                height: 40,
                color: const Color.fromARGB(255, 8, 34, 90),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,style: const TextStyle(color: Colors.white
                    ),
                    
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