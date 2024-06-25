import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/view/favorite/favorite_card.dart';
import 'package:nectar/view/favorite/favorite_view_model.dart';
import 'package:provider/provider.dart';
@RoutePage()
class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FavoriteViewModel(),
      child: Scaffold(
        body: Builder(
          builder: (context) {
             final favoriteViewModel = Provider.of<FavoriteViewModel>(context);
              final FavoriteList = favoriteViewModel.favorite;
          return ListView(
            shrinkWrap: true,
            children: [
              AppBar(
                backgroundColor: Colors.white,
                title: Text("Favorite"),
                centerTitle: true,
              ),
              Divider(),
                ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                  itemCount: FavoriteList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 15),
                      child: FavoriteCard(product: FavoriteList[index]  , index: index,),
                    );
                  }),
              Divider()
            ],
          );
          }),
        ),
      );
  }
}