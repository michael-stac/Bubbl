import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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