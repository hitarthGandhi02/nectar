import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/widget/SearchField.dart';
import 'package:nectar/widget/add_button.dart';
@RoutePage()
class ProductSearchView extends StatelessWidget {
  const ProductSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: InkWell(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: AppBar(
                backgroundColor: Colors.white,
                title: Searchfield(autoFocus: false,),
                actions: [
                  IconButton(
                    onPressed: () {
                      locator<AppRouter>().push(FilterRoute());
                    },
                    icon: SvgPicture.asset("assets/images/filter-icon.svg")
                    )
                ],
              ),
            ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height-95,
              child: GridView.builder(
                itemCount: 25,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 15, childAspectRatio: 0.64  ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap:(){
                      locator<AppRouter>().push(ProductRoute());
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(15, 19, 14, 15),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey), 
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset("assets/images/sprite.png")),
                          const SizedBox(height: 20,),
                          const Text("Sprite can", style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(height: 5,),
                          const Text("325ml, Price", style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey
                          ),),
                          SizedBox(height: 17,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("\$1.99", style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),),
                              AddButton(onPressed: null)
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
            ),
          )
          ],
        ),
      ),
    );
  }
}