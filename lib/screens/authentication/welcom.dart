import 'package:bubbl/screens/authentication/register.dart';
import 'package:flutter/material.dart';

import '../../services/shared/page_service.dart';
import '../../utilities/appcolors.dart';
import '../../utilities/custom_button.dart';
import '../../utilities/router.dart';
import 'login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 90),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 180,
            ),
            Center(
              child: Text(
                'Welcome to Bubbl',
                style: PageService.bigHeaderStyle,
              ),
            ),
            PageService.textSpaceL,
            Center(
              child: Text(
                'Get a Mentor and experience\n a new phase in your career path ',
                style: PageService.labelStyle,
                textAlign: TextAlign.center,
              ),
            ),
            PageService.textSpacexxL,
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    nextPage(context, page: const RegisterScreen());

                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: AppColor.primaryColor, width: 1)
                    ),
                    child: Text(
                      "Create Account",
                      style: PageService.labelStyle,
                    ),
                  ),
                ),
                PageService.textSpaceL,
                customButton(
                  context,
                  onTap: () {
                    nextPage(context, page: const LoginScreen());
                  },
                  text: 'Login',
                  bgColor: AppColor.primaryColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
