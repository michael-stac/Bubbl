import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_text_form_field/flutter_text_form_field.dart';

import 'appcolors.dart';




List<String> techStackList = [
  "HTML",
  "CSS",
  "JavaScript",
  "React",
  "Angular",
  "Vue.js",
  "Node.js",
  "Python",
  "Ruby",
  "Java",
  "C#",
  "Express.js",
  "Django",
  "Ruby on Rails",
  "Flask",
  "MySQL",
  "PostgreSQL",
  "SQL Server",
  "MongoDB",
  "Cassandra",
  "Redis",
  "Nginx",
  "Apache",
  "RESTful APIs",
  "GraphQL",
  "Git",
  "Docker",
  "Kubernetes",
  "Unit Testing",
  "Integration Testing",
  "Webpack",
  "Babel",
  "Jenkins",
  "Travis CI",
  "CircleCI",
  "AWS",
  "Azure",
  "Google Cloud Platform",
  "Prometheus",
  "Grafana",
  "ELK Stack",
  "OAuth",
  "JWT",
  "Sass",
  "Less",
  "npm",
  "Yarn",
  "React Native",
  "Flutter"
];
 List<String> getFlwBanks = [
   "Access Bank",
   "Diamond Bank",
   "Ecobank Nigeria",
   "Fidelity Bank",
   "First Bank of Nigeria",
   "First City Monument Bank",
   "Guaranty Trust Bank",
   "Heritage Bank",
   "Jaiz Bank",
   "Keystone Bank",
   "Skye Bank",
   "Stanbic IBTC Bank",
   "Standard Chartered Bank",
   "Sterling Bank",
   "Union Bank",
   "United Bank for Africa",
   "Unity Bank",
   "Wema Bank",
   "Zenith Bank"

 ];

class AvatarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..lineTo(8, size.height)
      ..arcToPoint(Offset(114, size.height), radius: Radius.circular(1))
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
