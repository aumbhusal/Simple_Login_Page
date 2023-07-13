import 'package:dell/Constants/appString.dart';
import 'package:dell/Constants/appTheme.dart';
import 'package:flutter/material.dart';

class forgetpass extends StatefulWidget {
  const forgetpass({Key? key}) : super(key: key);

  @override
  State<forgetpass> createState() => _forgetpassState();
}

class _forgetpassState extends State<forgetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              appString.forget,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              appString.forgetpass,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                margin: const EdgeInsets.all(5),
                width: 350,
                height: 60,
                child: const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: appTheme.fillColor,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide:
                            BorderSide(color: appTheme.borderColor, width: 1)),
                    hintText: "Enter your email",
                    hintStyle: TextStyle(
                        color: appTheme.hintText,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ),
            Container(
              height: 20,
            ),
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
                  onPressed: () {},
                  child: const Text(
                    "Send Code",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.5),
                  )),
            ),
          ],
        ));
  }
}
