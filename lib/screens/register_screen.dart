import 'package:flutter/material.dart';
import 'package:grocery_vendor_app/widgets/image_picker.dart';
import 'package:grocery_vendor_app/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({ Key? key }) : super(key: key);
  static const String id = 'register-screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children:[
                  ShopPicCard(),
                  RegisterForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}