import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/widget/SearchField.dart';
@RoutePage()
class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(height: 20,),
          const Text("Find Products", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
          
          ),textAlign: TextAlign.center,),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Searchfield(),
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height-250,
              child: GridView.builder(
                itemCount: 25     ,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 15, childAspectRatio: 0.84  ),
                itemBuilder:  (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      locator<AppRouter>().push((CategoryItems()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: SizedBox(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                            child: Column(
                              children: [
                                Image.asset("assets/images/product-example.png", height: 84,),
                                const SizedBox(height: 30,),
                               const Text("Fresh Fruils &  Vegetables", style: TextStyle(
                                  fontSize: 16    ,
                                  fontWeight: FontWeight.bold
                                ),textAlign: TextAlign.center,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ); 
                }),
            ),
          )
        ],
      ),
    );
  }
}