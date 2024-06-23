import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(40, 248, 164, 76),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset("assets/images/card-example.png",)),
                const SizedBox(width: 5,),
                const Text("Pulses", style: TextStyle(
                  color: Color.fromARGB(255, 62, 66, 63),
                  fontSize: 16,
                  fontWeight: FontWeight.bold 
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}