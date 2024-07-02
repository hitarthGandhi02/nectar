import 'package:flutter/material.dart';

class Searchfield extends StatelessWidget {
  TextEditingController? controller;
  bool? autoFocus;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  InputDecoration? inputDecoration;
  FocusNode? focusNode;
  double? width;
  void Function()? onTap;
  void Function(String newQuery)? onChange;
  Searchfield({super.key, this.controller,this.width, this.inputDecoration, this.autoFocus, this.validator, this.focusNode, this.keyboardType, this.onTap, this.onChange});
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 250,
      child: Container(
        child: TextField(
            onChanged: onChange,
            onTap: onTap,
            controller: controller,
            decoration: InputDecoration(
              enabledBorder:  OutlineInputBorder(
                borderSide: const BorderSide(width: 30,color: Color.fromARGB(255 , 242, 243, 242)),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: InputBorder.none,
              filled: true,
              hintText: " Search Store",
              hintStyle: const TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255 , 124, 124, 124),
                fontWeight: FontWeight.bold 
              ),
              prefixIcon: Image.asset("assets/images/search.png"),
              // prefix: Image.asset("assets/images/search.png"),  
              fillColor: const Color.fromARGB(200, 242, 243, 242),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
        ),
      ),
    );
  }
}