import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/filter_viewmodel.dart';
import 'package:nectar/view/login/login_view.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FilterView extends StatefulWidget {
  const FilterView({super.key});

  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  @override
  Widget build(BuildContext context) {
    final filterProvider = context.watch<FilterViewmodel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Filter",
          style: TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/images/cross.svg",
            height: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 236, 231, 231),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 30),
                child: Text("Categories",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: GridView.builder(
                  itemCount: filterProvider.categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    childAspectRatio: 8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    bool value = filterProvider.categories[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          value = !value;
                          value
                              ? filterProvider.Selected.add("Category $index")
                              : filterProvider.Selected.remove("Category $index");
                          filterProvider.categories[index] = value;
                          print(filterProvider.Selected);
                        });
                      },
                      child: Row(
                        children: [
                          Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              setState(() {
                                newValue!
                                    ? filterProvider.Selected.add("Category $index")
                                    : filterProvider.Selected.remove("Category $index");
                                filterProvider.categories[index] = newValue!;
                                print(filterProvider.Selected);
                              });
                            },
                          ),
                          Text("Category $index"),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text("Brand",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: GridView.builder(
                  itemCount: filterProvider.brands.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                    childAspectRatio: 8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    bool value = filterProvider.brands[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          value = !value;
                          value
                              ? filterProvider.Selected.add("Brand $index")
                              : filterProvider.Selected.remove("Brand $index");
                          filterProvider.brands[index] = value;
                          print(filterProvider.Selected);
                        });
                      },
                      child: Row(
                        children: [
                          Checkbox(
                            value: value,
                            onChanged: (bool? newValue) {
                              setState(() {
                                newValue!
                                    ? filterProvider.Selected.add("Brand $index")
                                    : filterProvider.Selected.remove("Brand $index");
                                filterProvider.brands[index] = newValue!;
                                print(filterProvider.Selected);
                              });
                            },
                          ),
                          Text("Brand $index"),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Center(
                child: PrimaryButton(
                    title: "Apply Filter",
                    color: const Color(0xff53B175),
                    icon: null,
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }
}
