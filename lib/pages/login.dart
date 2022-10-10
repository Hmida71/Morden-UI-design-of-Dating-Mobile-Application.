import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../index.dart';
import '../vr.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double widthT = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: colorApp,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40),
          child: AppBar(
            elevation: 0,
            backgroundColor: colorApp,
          )),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: widthT,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: widthT,
                    margin: const EdgeInsets.only(top: 8),
                    child: Container(
                      width: 30,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: widthT,
                      margin: const EdgeInsets.only(top: 30, left: 15),
                      child: const Text(
                        "Welcome Back!",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: widthT,
                      margin: const EdgeInsets.only(top: 5, left: 16),
                      child: const Text(
                        "Let's login for explore continues",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: widthT,
                      margin: const EdgeInsets.only(top: 30, left: 16),
                      child: const Text(
                        "Email or Phone Number",
                        style: TextStyle(fontSize: 21, color: Colors.black87),
                      )),
                  Container(
                      width: double.infinity,
                      height: 65,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: colorApp, width: 2),
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.email_outlined),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  label: Text(" example@gmail.com "),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.verified,
                            color: colorApp,
                          ),
                        ],
                      )),
                  Container(
                      alignment: Alignment.centerLeft,
                      width: widthT,
                      margin: const EdgeInsets.only(top: 5, left: 16),
                      child: const Text(
                        "Password",
                        style: TextStyle(fontSize: 21, color: Colors.black87),
                      )),
                  Container(
                      width: double.infinity,
                      height: 65,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xFFF0E1F8), width: 1),
                          color: const Color(0xfff9f7fa),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.password_outlined),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10),
                              child: TextFormField(
                                maxLines: 1,
                                decoration: const InputDecoration(
                                  label: Text(" ********** "),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              width: 70,
                              height: 50,
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFFEC6E98), width: 1),
                                  color: const Color(0xFFF1B6CA),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              child: const Text(
                                "view",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.pinkAccent),
                              )),
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: const Index()));
                      },
                      child: Material(
                        elevation: 6,
                        color: colorApp,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(35)),
                        child: Container(
                            width: double.infinity,
                            height: 60,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                color: colorApp,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(35))),
                            child: const Text(
                              "Sing in",
                              style: TextStyle(
                                  fontSize: 20,
                                  letterSpacing: 1.3,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: widthT,
                      margin: const EdgeInsets.only(top: 10),
                      child: const Text(
                        "You can connect with",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: widthT,
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xfff5f5f7),
                            backgroundImage: AssetImage('images/google.png'),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xfff5f5f7),
                            backgroundImage: AssetImage('images/facebook.png'),
                          ),
                          SizedBox(width: 20),
                          CircleAvatar(
                            radius: 14,
                            backgroundColor: Color(0xfff5f5f7),
                            backgroundImage: AssetImage('images/appel.png'),
                          ),
                        ],
                      )),
                  Container(
                      alignment: Alignment.center,
                      width: widthT,
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Don't have an account? ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          Text(
                            " Sing Up here",
                            style: TextStyle(
                                fontSize: 14, color: Colors.pinkAccent),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
