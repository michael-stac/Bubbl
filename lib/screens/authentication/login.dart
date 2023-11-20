import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';

import '../../utilities/appcolors.dart';
import '../../utilities/custom_button.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool isLoading = false;
  bool _passwordVisiblee = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 23, vertical: 30),
                margin: const EdgeInsets.only(top: 55),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(
                      height: 56,
                    ),

                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                            fontSize: 14),
                      ),
                    ),
                    CustomTextField(
                      _email,
                      hint: "",
                      password: false,
                      backgroundColor: const Color(0xffF5F5F5),
                      border: Border.all(
                          color: const Color(0xffF5F5F5), width: 0),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.only(bottom: 10, top: 30),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColor.black,
                            fontSize: 14),
                      ),
                    ),
                    TextFormField(
                      controller: _password,
                      obscureText: !_passwordVisiblee,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        filled: true,
                        fillColor: const Color(0xffF5F5F5),
                        isDense: true,
                        contentPadding: const EdgeInsets.only(
                            top: 15, bottom: 10, left: 10),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                          const BorderSide(color: Color(0xffF5F5F5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                          const BorderSide(color: Color(0xffF5F5F5)),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _passwordVisiblee
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color(0xff9BA59F),
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisiblee = !_passwordVisiblee;
                            });
                          },
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(bottom: 28, top: 15),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColor.primaryColor,
                              fontSize: 14),
                        ),
                      ),
                    ),
                    customButton(context, onTap: () {}, text: 'Login', bgColor: AppColor.primaryColor),
                    const SizedBox(
                      height: 27,
                    ),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: RichText(
                            text: TextSpan(
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal),
                                children: [
                                  TextSpan(
                                      text: 'Don’t have an account? ',
                                      style: TextStyle(
                                          color: AppColor.quickSilver)),
                                  TextSpan(
                                      text: 'Create Account',
                                      style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold)),
                                ])),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
