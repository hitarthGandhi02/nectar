import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddButton extends StatelessWidget {
  void Function()? onPressed;
   AddButton({super.key, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: SizedBox(
        width: 30,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 83, 177, 117)
          ),
          child: SvgPicture.asset("assets/images/add.svg", height: 30,),
        ),
      ),
    );
  }
}