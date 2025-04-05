import 'package:flutter/material.dart';
import 'package:fronted_page/pages/password.dart';
import 'package:fronted_page/pages/sigin.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  

  final _formKey = GlobalKey<FormState>(); // Form key for validation

  void goToNextPage() {
    if (_formKey.currentState!.validate()) {
      // Navigate to Password Page and pass email
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Password(email: emailController.text,),
        ),
      );
    }
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email cannot be empty";
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return "Enter a valid email";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xffb51837),
                Color(0xff661c3a),
                Color(0xff301939)
              ],
              begin: Alignment.topLeft,
              end: Alignment.topRight,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Create Your\nAccount",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Email Field
                          const Text(
                            "Email",
                            style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email_outlined),
                            ),
                            validator: validateEmail,
                          ),
                          const SizedBox(height: 20),

                          // Username Field
                          const Text(
                            "Username",
                            style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            controller: usernameController,
                            decoration: const InputDecoration(
                              hintText: "Username",
                              prefixIcon: Icon(Icons.person_outlined),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),

                          // Verify OTP Field (Placeholder, will be implemented later)
                          const Text(
                            "Verify OTP",
                            style: TextStyle(
                              color: Color(0xffb51837),
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextFormField(
                            controller: otpController,
                            decoration: const InputDecoration(
                              hintText: "Verify OTP",
                              prefixIcon: Icon(Icons.outbox_sharp),
                            ),
                          ),
                          const SizedBox(height: 30),

                          // Next Button
                          GestureDetector(
                            onTap: goToNextPage,
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              height: 50,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xffb51837),
                                    Color(0xff661c3a),
                                    Color(0xff301939)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),

                          // Already have an Account
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already have an Account? ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Sigin(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign in?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
