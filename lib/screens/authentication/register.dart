import 'package:bubbl/utilities/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';

import '../../utilities/appcolors.dart';
import '../../utilities/custom_button.dart';
import '../user_variants.dart/user_interest.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _comfirmpassword = TextEditingController();
  final TextEditingController _password = TextEditingController();
  TextEditingController profileTextController = TextEditingController();
  String genderController = "None";

  bool _passwordVisible = false;
  bool _passwordVisiblee = false;

  ///password check
  List<String> validatorTextList = [
    "should contain at least one upper case",
    "should contain at least one lower case",
    "should contain at least on number",
    "should contain at least on special character",
    "must be at least 8 characters in length"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
              child: Center(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Account Type',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.black),
                          ),
                        ),
                  Container(
                    height: 50,
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    decoration: BoxDecoration(
                      color: const Color(0xffF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xffF5F5F5), width: 0),
                    ),
                    child: DropdownButton<String>(
                      value: genderController,
                      underline: const Text(""),
                      isExpanded: true,
                      icon: const Icon(Icons.keyboard_arrow_down, color: Color(0xff9BA59F)),
                      items: ['None', 'Mentee', 'Mentor']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 17),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          genderController = newValue!;
                        });
                      },
                    ),
                  ),
                  
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 10, top: 30),
                          child: Text(
                            "Fullname",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColor.black,
                                fontSize: 14),
                          ),
                        ),
                        CustomTextField(
                          _fullname,
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
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(bottom: 10, top: 30),
                          child: Text(
                            "Confirm Password",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColor.black,
                                fontSize: 14),
                          ),
                        ),
                        TextFormField(
                          controller: _comfirmpassword,
                          obscureText: !_passwordVisible,
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
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: const Color(0xff9BA59F),
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        customButton(context,
                            onTap: () {
                          nextPage(context, page: UserInterestScreen());
                            },
                            text: 'Create Account',
                            bgColor: AppColor.primaryColor),
                        const SizedBox(
                          height: 27,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            child: RichText(
                                text: TextSpan(
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                    children: [
                                  TextSpan(
                                      text: 'Already have an account?',
                                      style: TextStyle(
                                          color: AppColor.quickSilver)),
                                  TextSpan(
                                      text: ' Login here',
                                      style: TextStyle(
                                          color: AppColor.primaryColor,
                                          fontWeight: FontWeight.bold)),
                                ])),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            child: RichText(
                                text: TextSpan(
                                    style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.normal),
                                    children: [
                                  TextSpan(
                                      text: 'By Signing Up you agree to our.',
                                      style: TextStyle(
                                          color: AppColor.quickSilver)),
                                  TextSpan(
                                      text: ' Terms & Condition',
                                      style: TextStyle(
                                          color: AppColor.black,
                                          fontWeight: FontWeight.w500)),
                                ])),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
