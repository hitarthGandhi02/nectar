import 'package:flutter/material.dart';
import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/widget/add_button.dart';

class CategoryList extends StatelessWidget {
  // int index;
  // CategoryModel category;
   CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
                    onTap: () {
                      // locator<AppRouter>().push(ProductRoute());
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 19, 14, 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Image.asset("assets/images/sprite.png")),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "Sprite can",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "325ml, Price",
                            style:
                                TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$1.99",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              AddButton(onPressed: null)
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
  }