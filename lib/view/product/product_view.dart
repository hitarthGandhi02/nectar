import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nectar/view/login/login_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class ProductView extends StatelessWidget {
  const ProductView({super.key});
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(color: Colors.red),
            child: AppBar(
              backgroundColor: Colors.white,
              leading:  IconButton(onPressed : () {Navigator.of(context).pop();}, icon:   Icon(Icons.arrow_back)),
              actions: const [Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.ios_share),
              )],
            ),
          ),
          SizedBox(
            height: 200,
            child: PageView(
              controller: pageController,
              children: [
                Image.asset(
                  "assets/images/product-example.png",
                ),
                Image.asset("assets/images/product-example.png"),
                Image.asset("assets/images/product-example.png"),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotWidth: 6,
                dotHeight: 3,
                activeDotColor: Colors.green,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Natural Red Apple",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "1kg, Price",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Icon(Icons.favorite_border)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, right: 5),
                      child: const Icon(
                        Icons.minimize,
                        size: 20,
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.add,
                      color: Colors.green,
                    )
                  ],
                ),
                const Text(
                  "\$4.99",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(),
          ),
          const ExpansionTile(
            shape: Border(top: BorderSide(color: Colors.white)),
            title: Text(
              "Product Detail",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            children: <Widget>[
              ListTile(
                title: Text(
                  "You must have heard that “an apple a day, keeps the doctor away.” I remember hearing this for the first time and I decided to eat an apple every day.",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              )
            ],
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(),
          ),
          ExpansionTile(
            trailing: Chip(
                label: Container(
              // height: 5,
              // width: 5,
              child: Text(
                "100gr",
                style: TextStyle(fontSize: 9, color: Colors.grey),
              ),
            )),
            shape: const Border(top: BorderSide(color: Colors.white)),
            title: const Text(
              "Nutritions",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
          ),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(),
          ),
          ExpansionTile(
            trailing: RatingBar.builder(
              itemSize: 20,
              initialRating: 3,
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
              
            ),
            shape: Border(top: BorderSide(color: Colors.white)),
            title: Text(
              "Review",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            
          ),
          SizedBox(
            height: 23,
          ),
          PrimaryButton(
              title: "Add to Basket",
              color: Color.fromARGB(255, 83, 177, 117),
              icon: null,
              onPressed: null),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
