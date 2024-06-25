import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/view/category_items/category_list.dart';
import 'package:nectar/view/category_items/category_view_model.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CategoryItems extends StatelessWidget {
  // CategoryModel category;  
   CategoryItems({super.key,});

  @override
  Widget build(BuildContext context) {
    final categoryViewProvider = context.watch<CategoryViewModel>;
    categoryViewProvider();
    return Scaffold(
      body:  ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
                actions: [
                  IconButton(
                      icon: SvgPicture.asset("assets/images/filter-icon.svg"),
                      onPressed: () {
                        locator<AppRouter>().push(FilterRoute());
                      },)
                ],
                title: const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Beverages",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 95,
                child: GridView.builder(
                itemCount: 25,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 15,
                    childAspectRatio: 0.64),
                itemBuilder: (BuildContext context, int index) {
                  return CategoryList();
                }
                )
          
      )
      )
          ]
      )
        );
        }
      
    
  }
