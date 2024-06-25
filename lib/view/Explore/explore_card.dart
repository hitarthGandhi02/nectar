import 'package:flutter/material.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/service/supabase_auth.dart';
import 'package:nectar/core/service/supabase_image.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';

class ExploreCard extends StatelessWidget {
  final supabaseImage = locator<SupabaseImage>();
  int index;
  CategoryModel category;
  ExploreCard({super.key, required this.index, required this.category});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network((supabaseImage.getImages('images/${category.images[0]}')), height: 80,),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Text(
                  category.name,
                  style:
                      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
