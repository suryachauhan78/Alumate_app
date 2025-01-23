import 'package:flutter/material.dart';
import 'package:fronted_page/pages/bottomnav.dart';
import 'package:fronted_page/pages/signup.dart';

class Sigin extends StatefulWidget {
  const Sigin({super.key});

  @override
  State<Sigin> createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffb51837),
            Color(0xff661c3a),
            Color(0xff301939)
          ], begin: Alignment.topLeft, end: Alignment.topRight)),
          child: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "Hello\nSign in!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              hintText: " Enter Email",
                              prefixIcon: Icon(Icons.email_outlined)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Password",
                          style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              hintText: " Enter Password",
                              prefixIcon: Icon(Icons.password_sharp)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Bottomnavigation()));
                          },
                          child: Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              height: 50,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [
                                        Color(0xffb51837),
                                        Color(0xff661c3a),
                                        Color(0xff301939)
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.topRight),
                                  borderRadius: BorderRadius.circular(30)),
                              width: MediaQuery.of(context).size.width,
                              child: const Center(
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  "Don't have an Account?",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Signup()));
                                  },
                                  child: const Text(
                                    "Sign up?",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ]),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
