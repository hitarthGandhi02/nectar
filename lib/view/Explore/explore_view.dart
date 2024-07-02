import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/view/Explore/category_card.dart';
import 'package:nectar/view/category_items/category_view_model.dart';
import 'package:nectar/widget/SearchField.dart';
import 'package:provider/provider.dart';

@RoutePage()
class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  String query = "";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CategoryViewModel(),
      child: Scaffold(
        body: Builder(builder: (context) {
          final categoryViewModel = Provider.of<CategoryViewModel>(context);
          final categoryList = categoryViewModel.category;
          final searchCategoryList = query.isEmpty
              ? categoryList
              : categoryList
                  .where((category) =>
                      category.name.toLowerCase().contains(query.toLowerCase()))
                  .toList();
          log(categoryList.toString());
          return ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Find Products",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Searchfield(
                  onChange: (String newQuery) {
                    setState(() {
                      query = newQuery;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 250,
                  child: GridView.builder(
                      itemCount: searchCategoryList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 15,
                              childAspectRatio: 0.84),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            decoration: BoxDecoration(
                                color: Colors.primaries[index].withOpacity(0.1),
                                // border: Border.all(color: Colors.red),
                                borderRadius: BorderRadius.circular(15)),
                            child: CategoryCard.explore(
                              index: index,
                              category: searchCategoryList[index],
                              ontap: () {
                                locator<AppRouter>().push(CategoryItems());
                              },
                            ));
                      }),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
