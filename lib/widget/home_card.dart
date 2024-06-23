import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/view/home/homeview_model.dart';
import 'package:nectar/widget/add_button.dart';
import 'package:provider/provider.dart';

class HomeCard extends StatelessWidget {
   HomeCard({super.key});
  @override

  Widget build(BuildContext context) {
        final homeViewProvider = context.watch<HomeViewModel>;
    return InkWell(
      onTap: () {
        locator<AppRouter>().push(ProductRoute());
      },
      child: SizedBox(width: 132,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), 
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/card-example.png",)),
                      const SizedBox(height: 5,),
                    const Text("example",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                   const Text("7pcs, Price", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("\$4.99", style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )),
                        AddButton(onPressed: null)
                      ],
                    )
                    ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}