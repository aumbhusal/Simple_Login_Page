import 'package:dell/Constants/appImages.dart';
import 'package:dell/Constants/appTheme.dart';
import 'package:dell/Pages/login.dart';
import 'package:dell/Widgets/splashWidget.dart';
import 'package:flutter/material.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenwidth,
        height: screenheight,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(images.cover),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 250,
            ),
            appLogo(),
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(appTheme.light),
                      backgroundColor: MaterialStateProperty.all(appTheme.dark),
                      elevation: MaterialStateProperty.all(5),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const login(),
                        ));
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.5),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: OutlinedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(appTheme.dark),
                    elevation: MaterialStateProperty.all(5),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)))),
                onPressed: () {},
                child: const Text(
                  "Register",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1.5),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Continue as a guest",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  letterSpacing: 1,
                  color: appTheme.primary),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
