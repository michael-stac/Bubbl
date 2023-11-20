import 'package:bubbl/services/shared/page_service.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Container(
          child:   Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Let Get You Started", style: PageService.largeHeaderStyle,),

            ],
          ),
        ),
      ),
    );
  }
}
