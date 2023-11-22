import 'package:flutter/material.dart';

import 'appcolors.dart';


class InAppTabButton extends StatelessWidget {
  const InAppTabButton({super.key, required this.text, required this.icon, this.onTap});

  final String text;
  final Widget icon;
  final VoidCallback? onTap;

  //Color Instance

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(243, 245, 248, 1),
                borderRadius: BorderRadius.all(
                    Radius.circular(18))),
            padding: const EdgeInsets.all(12),
            child: icon,
          ),
          Text(text, textAlign: TextAlign.center,style:
          TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              fontFamily: 'Inter',
              color: Colors.blue.shade100)),

        ],
      ),
    );
  }
}
