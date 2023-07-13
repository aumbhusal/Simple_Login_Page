import 'package:dell/Constants/appImages.dart';
import 'package:flutter/material.dart';

class splashWidget extends StatefulWidget {
  const splashWidget({Key? key}) : super(key: key);

  @override
  State<splashWidget> createState() => _splashWidgetState();
}

class _splashWidgetState extends State<splashWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

Widget appLogo() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 300,
      height: 300,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(images.logo)),
      ),
    ),
  );
}
