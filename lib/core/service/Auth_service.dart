import 'package:google_sign_in/google_sign_in.dart';
import 'package:nectar/core/service/supabase_auth.dart';
import 'package:nectar/core/viewmodel/app_locator.dart';
import 'package:nectar/core/viewmodel/app_router.dart';
import 'package:nectar/core/viewmodel/app_router.gr.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  void signInWithGoogle () async {
    try {
  String androidClientId = "1061531682142-loel6t3r4d54vdf9b98b6lbbnbipmf6t.apps.googleusercontent.com";
  String webClientId = "1061531682142-97n7bnf6tviv47sm5qm00c2vfrhosn2e.apps.googleusercontent.com";
  final GoogleSignIn googleSignIn = GoogleSignIn(
    clientId: androidClientId,
    serverClientId: webClientId,
  );
  final googleUser = await googleSignIn.signIn();
  final googleAuth = await googleUser!.authentication;
  final accessToken = googleAuth.accessToken;
  final idToken = googleAuth.idToken;

  if (accessToken == null) {
    throw 'No Access Token found.';
  }
  if (idToken == null) {
    throw 'No ID Token found.';
  }

  await supabase.auth.signInWithIdToken(
    provider: OAuthProvider.google,
    idToken: idToken,
    accessToken: accessToken,
  );
  locator<AppRouter>().push( LocationRoute());
    }catch(e) {
      print("ERROR CAUGHT : $e");
    }
    
  }
  void getOTP(phoneNumber) async {
    print("PHONE NUM : $phoneNumber");
    try {
      supabase.auth.signInWithOtp(phone: phoneNumber);
    } catch (e) {
      print(e);
    }
  }

  Future<void> verifyOTP(String OTP) async {
    try {
    await supabase.auth.verifyOTP(token: OTP, type: OtpType.sms);
    }
     catch (e) {
      print("ERROR CAUGHT : $e");             
      return;
    }
  }
  //make the verify OTP function
}

