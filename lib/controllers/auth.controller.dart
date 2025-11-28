import 'package:flutter_application_1/pages/pages/main_page.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        Get.offAll(() =>  MainPage());

        Get.snackbar(
          "Login dibatalkan",
          "Anda membatalkan proses login",
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      // ambil token
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // sign in firebase
      final userCredential = await _auth.signInWithCredential(credential);

      final user = userCredential.user;

      Get.offAll(() =>  MainPage());


    } catch (e) {
      Get.offAll(() => MainPage());
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
