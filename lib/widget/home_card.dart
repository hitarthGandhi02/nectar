import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/supabase_image.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/widget/add_button.dart';
class HomeCard extends StatelessWidget {
  ProductModel product;
  int index;
   HomeCard({super.key, required this.product, required this.index});
  @override

  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<AppRouter>().push(ProductRoute(product: product, index: index));
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
                      child: Image.network(locator<SupabaseImage>().getImages(product.images[index]),height: 70,)),
                      const SizedBox(height: 5,),
                     Text(product.name,style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    Text(product.description, style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text(("\$${product.price}"), style: const TextStyle(
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