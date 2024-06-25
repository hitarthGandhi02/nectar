import 'package:flutter/material.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/supabase_image.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/view/favorite/favorite_view_model.dart';

class FavoriteCard extends StatelessWidget {
  final supabaseImage = locator<SupabaseImage>();
  ProductModel product;
  int index;
  FavoriteCard({super.key, required this.index, required this.product});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        FavoriteViewModel().cardClicked();
      },
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          child: Row(
            children: [
              Image.network(supabaseImage.getImages(product.images[index]), height: 50,),
              SizedBox(width: 30,),
               Column(
                children: [
                  Text(product.name, style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("325 ml, Price")
                ],
              ),
              const SizedBox(width: 119,),
               Text("\$${product.price}", style: TextStyle(
                fontWeight: FontWeight.bold
               ),),
              const Icon(Icons.arrow_forward_ios_sharp),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}