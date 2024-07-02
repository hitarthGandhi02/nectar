import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nectar/view/Explore/category_card.dart';
import 'package:nectar/view/category_items/category_view_model.dart';
import 'package:nectar/view/home/homeview_model.dart';
import 'package:nectar/widget/SearchField.dart';
import 'package:nectar/widget/home_card.dart';
import 'package:provider/provider.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController searchController = TextEditingController();

  final PageController pageController = PageController();

  String query = "";

  @override
  Widget build(BuildContext context) {
    final homeViewProvider = context.watch<HomeViewModel>();
    final productsList = homeViewProvider.products;
    final filteredProductsList = query.isEmpty
        ? productsList
        : productsList.where((product) =>
            product.name.toLowerCase().contains(query.toLowerCase())).toList();
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Builder(
          builder: (context) {
            return ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  "assets/images/carrot_colored.png",
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/location.png"),
                      const SizedBox(width: 5),
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
                    onChange: (String newQuery) {
                      setState(() {
                        query = newQuery;
                      });
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
                        children: [
                          SizedBox(
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
                          // Positioned(
                          //   left: 150,
                          //   bottom: 15,
                          //   child: SmoothPageIndicator(
                          //     controller: pageController,
                          //     count: filteredProductsList.length,
                          //     effect: const ExpandingDotsEffect(
                          //       dotWidth: 5,
                          //       dotHeight: 3,
                          //       activeDotColor: Colors.green,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exclusive Offer",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: SizedBox(
                          height: 200,
                          child: ListView.builder(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: filteredProductsList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: HomeCard(
                                  product: filteredProductsList[index],
                                  index: index,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Best Selling",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: SizedBox(
                          height: 200,
                          child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: filteredProductsList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: HomeCard(
                                  product: filteredProductsList[index],
                                  index: index,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "See all",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: SizedBox(
                          height: 100,
                          child: ChangeNotifierProvider(
                            create: (context) => HomeViewModel(),
                            child: Builder(
                              builder: (context) {
                                final categoryViewModel = Provider.of<CategoryViewModel>(context);
                                final categoryList = categoryViewModel.category;
                                return ListView.builder(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: categoryList.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.primaries[index]
                                                  .withOpacity(0.1),
                                              borderRadius: BorderRadius.circular(15)),
                                          child: CategoryCard.home(
                                            index: index,
                                            category: categoryList[index],
                                            ontap: () {},
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
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
                      itemCount: filteredProductsList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: HomeCard(
                            product: filteredProductsList[index],
                            index: index,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
