import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  TextEditingController? controller;
  bool? autoFocus;
  String? Function(String?)? validator;
  TextInputType? keyboardType;
  InputDecoration? inputDecoration;
  FocusNode? focusNode;
  void Function()? onTap;
   PrimaryTextField({super.key, this.controller,  this.autoFocus, this.validator, this.keyboardType, this.inputDecoration, this.focusNode, this.onTap});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        autofocus: autoFocus??false,
        validator: validator,
        keyboardType: keyboardType,
        decoration: inputDecoration,
        focusNode: focusNode,
        onTap: onTap,
      );
  }
}