import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/service/Auth_service.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
class LoginViewModel extends ChangeNotifier { 
  String? countryFlag;
  String? countryCode;
  final AppRouter _router = locator<AppRouter>();
  void showCountry(BuildContext context) {
    showCountryPicker(
      context: context,
      showPhoneCode: false,
      onSelect: (Country country) {
        countryFlag = country.flagEmoji;
        countryCode = country.phoneCode;
        notifyListeners();
      },
    );
  }

  void navigateToPhoneView() {
    _router.push((PhoneRoute()));
  }
  
String? validateContactNumber(String? value) {  
    if (value == null || value.isEmpty) {
      return 'Contact number is required';
    }
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Invalid contact number';
    }
    return null;
  }
  void getNumber(phoneNumber) {
    if(countryCode == null) {
      countryCode = '91';
    }
    locator<AuthService>().getOTP("+$countryCode$phoneNumber");
  }
}
