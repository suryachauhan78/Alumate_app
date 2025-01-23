import 'package:flutter/material.dart';
import 'package:fronted_page/pages/password.dart';
import 'package:fronted_page/pages/sigin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                "Create Your\nAccount",
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
                              hintText: " Email",
                              prefixIcon: Icon(Icons.email_outlined)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          " Username",
                          style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              hintText: " Username",
                              prefixIcon: Icon(Icons.person_outlined)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          " Verify OTP",
                          style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              hintText: " Verify OTP",
                              prefixIcon: Icon(Icons.outbox_sharp)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Password()));
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
                                  "Next",
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
                                  "Already have an Account?",
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
                                                const Sigin()));
                                  },
                                  child: const Text(
                                    "Sign in?",
                                    style: TextStyle(
                                        color: Colors.black,
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
