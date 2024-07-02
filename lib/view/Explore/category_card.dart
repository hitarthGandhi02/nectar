import 'package:flutter/material.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/service/supabase_image.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';

enum CategoryType { home, explore }

class CategoryCard extends StatelessWidget {
  final supabaseImage = locator<SupabaseImage>();
  int index;
  CategoryModel category;
  CategoryType type;
  void Function() ontap;

  CategoryCard.explore(
      {super.key,
      required this.index,
      required this.category,
      required this.ontap})
      : type = CategoryType.explore;

  CategoryCard.home(
      {super.key,
      required this.index,
      required this.category,
      required this.ontap})
      : type = CategoryType.home;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: type == CategoryType.explore
            ? SizedBox(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          (supabaseImage
                              .getImages('images/${category.images[0]}')),
                          height: 70,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Text(
                            category.name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : SizedBox(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 15),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                          (supabaseImage
                              .getImages('images/${category.images[0]}')),
                          height: 70,
                        ),
                        const SizedBox(
                          height: 15,
                          width: 15,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25.0),
                            child: Text(
                              category.name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ));
  }
}
