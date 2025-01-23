import 'package:flutter/material.dart';
import 'package:fronted_page/pages/detail.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
                "Confirm\nPassword ",
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
                          "Create Password ",
                          style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              hintText: "Create Password ",
                              prefixIcon: Icon(Icons.password)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text(
                          "Re-Enter Password",
                          style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                              hintText: " Re-Enter Password",
                              prefixIcon: Icon(Icons.password_sharp)),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Detail()));
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
