import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Image.asset("assets/images/profile-picture.png"),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Hitarth Gandhi",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8),
                        SvgPicture.asset("assets/images/pencil-icon.svg"),
                      ],
                    ),
                    const Text(
                      "gandhihitarth02@gmail.com",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 0),
            Expanded(
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 0,
                  childAspectRatio: 5.2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      const Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset("assets/images/order-icon.svg"),
                                  const SizedBox(width: 15),
                                  const Text(
                                    "Example",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        ),
                      ),
                      // index == 7 ? Divider() : SizedBox(height: 0,) 
                    ],
                  );
                },
              ),
              
            ),  
            Text("sdf"),
          ],
        ),
      ),
    );
  }
}
