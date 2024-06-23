import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class PrimaryTypeAheadField extends StatelessWidget {
  TextEditingController? controller;
  FutureOr<List<String>?> Function(String) suggestionsCallback;
  Widget Function(BuildContext, TextEditingController, FocusNode)? builder;
  Widget Function(BuildContext, String) itemBuilder;
  void Function(String)? onSelected;
   PrimaryTypeAheadField({super.key, this.controller, required this.suggestionsCallback, this.builder, required this.itemBuilder, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return  TypeAheadField(itemBuilder: itemBuilder, onSelected: onSelected, suggestionsCallback: suggestionsCallback);
  }
}