import 'package:dell/Constants/appImages.dart';
import 'package:dell/Constants/appString.dart';
import 'package:dell/Constants/appTheme.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  appString.registerPage,
                  style: Theme.of(context).textTheme.headlineLarge,
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
                            borderSide: BorderSide(
                                color: appTheme.borderColor, width: 1)),
                        hintText: "Username",
                        hintStyle: TextStyle(
                            color: appTheme.hintText,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    width: 350,
                    height: 60,
                    child: const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: appTheme.fillColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                color: appTheme.borderColor, width: 1)),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: appTheme.hintText,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    width: 350,
                    height: 60,
                    child: const TextField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: appTheme.fillColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                color: appTheme.borderColor, width: 1)),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: appTheme.hintText,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    width: 350,
                    height: 60,
                    child: const TextField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: appTheme.fillColor,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(
                                color: appTheme.borderColor, width: 1)),
                        hintText: "Confirm password",
                        hintStyle: TextStyle(
                            color: appTheme.hintText,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 250,
                  height: 52,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(appTheme.light),
                          backgroundColor:
                              MaterialStateProperty.all(appTheme.dark),
                          elevation: MaterialStateProperty.all(5),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {},
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.normal,
                            letterSpacing: 1.5),
                      )),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 2,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Or Register with",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: appTheme.forgetpass),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 2,
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: appTheme.card),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            images.fb,
                            height: 45,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: appTheme.card),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            images.google,
                            height: 45,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: appTheme.card),
                            borderRadius: BorderRadius.circular(8)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            images.apple,
                            height: 45,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          appString.account,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          appString.register,
                          style: const TextStyle(
                              color: appTheme.primary, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
