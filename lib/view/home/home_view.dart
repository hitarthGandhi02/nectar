import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nectar/core/model/product_model.dart';
import 'package:nectar/core/service/product_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/view/home/home_categories.dart';
import 'package:nectar/view/home/homeview_model.dart';
import 'package:nectar/widget/SearchField.dart';
import 'package:nectar/widget/home_card.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  HomeView({super.key});
  final TextEditingController searchController = TextEditingController();
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final homeViewProvider = context.watch<HomeViewModel>;
    homeViewProvider();
    AutoRouter.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child: ListView(
          // physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          children: [
           const SizedBox(height: 50,),
            Image.asset("assets/images/carrot_colored.png", height: 50,),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/location.png"),
                  SizedBox(width: 5),
                  const Text(
                    "Dhaka, Banassre",
                    style: TextStyle(
                      color: Color.fromARGB(1000, 76, 79, 77),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Searchfield(
                onTap: () {
                  // locator<AppRouter>().push(const ProductSearchRoute());   
                },
                controller: searchController,
                autoFocus: false,
                validator: null,
                keyboardType: TextInputType.text,
                inputDecoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color.fromARGB(100, 242, 243, 242),
                ),
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  Stack(
                    children:[ SizedBox(
                      height: 100,
                      child: PageView(
                        controller: pageController,
                        children: [
                          Image.asset("assets/images/slider.png"),
                          Image.asset("assets/images/slider.png"),
                          Image.asset("assets/images/slider.png"),
                        ],
                      ),
                    ),
                    
                  
                  Positioned(
                    left: 150,
                    bottom: 15,
                    child: SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      effect: const ExpandingDotsEffect(
                        dotWidth: 5,
                        dotHeight: 3,
                        activeDotColor: Colors.green,
                      ),
                    ),
                  ),
                ]
              ),
             const SizedBox(height: 30,),
             const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Exclusive Offer", style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("See all", style: TextStyle(
                      color: Colors.green,
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: HomeCard(),
                      );
                    }
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best Selling", style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("See all", style: TextStyle(
                      color: Colors.green,
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: HomeCard(),
                      );
                    }
                  ),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories", style: TextStyle(    
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("See all", style: TextStyle(
                      color: Colors.green,
                      fontSize: 18
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: HomeCategories(),
                    );
                  }
                ),
              ),
              SizedBox(height: 30,)
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: 200,
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: HomeCard(),
                      );
                    }
                  ),
                ),
              ),
          ],
        ),
      )
    );
  }
}
