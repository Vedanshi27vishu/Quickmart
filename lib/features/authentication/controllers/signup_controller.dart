
import 'package:ecommerce/features/authentication/screens/verification.dart';
import 'package:ecommerce/user/user_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignupController {
  static final email = TextEditingController();
  static final firstName = TextEditingController();
  static final lastName = TextEditingController();
  static final username = TextEditingController();
  static final password = TextEditingController();
  static final phoneNumber = TextEditingController();
  static GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //Signup
  static SignUp(String email, String password, BuildContext context) async {
    try { 
     await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((Value) => Navigator.push(context,
              MaterialPageRoute(builder: (context) => VerifyEmailScreen())));
    } catch (e) {
      // Show error SnackBar
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Signup failed: $e')),
      );
    }
  }
  static bool ischecked(value) {
    if (value == true)
      return true;
    else {
      return false;
    }
  }

 static final user = UserModel(
      firstName: firstName.text.trim(),
      lastName: lastName.text.trim(),
      phoneNumber: phoneNumber.text.trim(),
      email: email.text.trim(),
      id: username.text.trim(),
      profilePicture: '', 
      username: username.text.trim(),);
  
}
