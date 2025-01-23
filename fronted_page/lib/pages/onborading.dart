import 'package:flutter/material.dart';
import 'package:fronted_page/pages/signup.dart';
import 'package:fronted_page/pages/sigin.dart';

class Onborading extends StatefulWidget {
  const Onborading({super.key});

  @override
  State<Onborading> createState() => _OnboradingState();
}

class _OnboradingState extends State<Onborading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xffb51837),
          Color(0xff661c3a),
          Color(0xff301939)
        ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 90),
              child: Text(
                "Welcome TO ALUMATE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "images/logo.png",
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcome Back",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 38,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Sigin()));
              },
              child: Container(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                margin: const EdgeInsets.only(left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
              child: Container(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                margin: const EdgeInsets.only(left: 30, right: 30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white60),
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(131, 0, 1, 3),
                  borderRadius: BorderRadius.circular(30)),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image.asset(
                  "images/search.png",
                  height: 30,
                  width: 30,
                  fit: BoxFit.cover,
                  color: const Color(0xffb51837),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Login with Google",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
