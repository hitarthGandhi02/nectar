import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:nectar/core/viewmodel/location_view_model.dart';
import 'package:nectar/view/login/login_view.dart';
import 'package:nectar/widget/Text_field.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LocationView extends StatelessWidget {
  LocationView({super.key});
  @override
  TextEditingController zoneController = TextEditingController();
  TextEditingController areaController = TextEditingController();
  Widget build(BuildContext context) {
    List<String> locations = ['a', 'b', 'c', 'd'];
    final locationProvider = context.watch<LocationViewModel>;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.black,
        ),
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset("assets/images/map.png"),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 15),
                child: Text(
                  "Select you location",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Text(
                "Switch on your location to stay in tune with\nwhat's happening in your area",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
                child: TypeAheadField<String>(
                  controller: zoneController,
                  suggestionsCallback: (pattern) {
                    return locations
                        .where((location) => location
                            .toLowerCase()
                            .contains(pattern.toLowerCase()))
                        .toList();
                  },
                  builder: (context, controller, focusNode) {
                    return PrimaryTextField(
                        controller: controller,
                        focusNode: focusNode,
                        autoFocus: true,
                        inputDecoration: InputDecoration(
                          labelText: 'Your Zone',
                        ));
                  },
                  itemBuilder: (context, city) {
                    return ListTile(
                      title: Text(city),
                    );
                  },
                  onSelected: (city) {
                    zoneController.text = city;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TypeAheadField<String>(
                  controller: areaController,
                  suggestionsCallback: (pattern) {
                    return locations
                        .where((location) => location
                            .toLowerCase()
                            .contains(pattern.toLowerCase()))
                        .toList();
                  },
                  builder: (context, controller, focusNode) {
                    return PrimaryTextField(
                        controller: controller,
                        focusNode: focusNode,
                        autoFocus: true,
                        inputDecoration: InputDecoration(
                          labelText: 'Your Area',
                        ));
                  },
                  itemBuilder: (context, city) {
                    return ListTile(
                      title: Text(city),
                    );
                  },
                  onSelected: (city) {
                    areaController.text = city;
                  },
                ),
              ),
              SizedBox(
                height: 40,
              ),
              PrimaryButton(
                onPressed: () {
                  locator<AppRouter>().push( HomeRoute());
                },
                title: "Submit",
                color: Theme.of(context).primaryColor,
                icon: '',
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
