import 'package:flutter/material.dart';
import 'package:login_signup_ui/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202442),
      appBar: appBar(),
      body: SingleChildScrollView(child: body(context)),
    );
  }

  Container body(context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
            ],
          ),
          const Center(
            child: Text(
              "Locker",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Signin",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Save all your account password in one place securly and encrypted",
              style: TextStyle(
                color: Color(0xff3cd27D),
                fontSize: 14,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email Address",
                  hintStyle: const TextStyle(color: Color(0xff62678c)),
                  fillColor: const Color(0xff353a61),
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/email.png',
                      fit: BoxFit.contain,
                      height: 8,
                      width: 8,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Color(0xff62678c)),
                  fillColor: const Color(0xff353a61),
                  filled: true,
                  contentPadding: const EdgeInsets.all(10),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image.asset(
                      'assets/images/password.png',
                      fit: BoxFit.contain,
                      height: 8,
                      width: 8,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: GestureDetector(
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(color: Color(0xff3cd27d)),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3cd27d),
                    elevation: 0,
                    fixedSize: const Size(180, 50),
                    foregroundColor: Colors.white),
                child: const Text(
                  'Login',
                ),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                'OR',
                style: TextStyle(
                    color: Color(0xff3cd27d),
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff62678c),
                        elevation: 0,
                        fixedSize: const Size(90.0, 50.0),
                        foregroundColor: Colors.white),
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 20,
                      height: 20,
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff62678c),
                        elevation: 0,
                        fixedSize: const Size(90.0, 50.0),
                        foregroundColor: Colors.white),
                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 20,
                      height: 20,
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff62678c),
                        elevation: 0,
                        fixedSize: const Size(90.0, 50.0),
                        foregroundColor: Colors.white),
                    child: Image.asset(
                      'assets/images/linkedin.png',
                      width: 20,
                      height: 20,
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Color(0xff62678c), fontWeight: FontWeight.w500),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisterPage()),
                    );
                  },
                  child: Text(
                    " Signup",
                    style: TextStyle(
                        color: Colors.blue[400], fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: const Color(0xff202442),
      toolbarHeight: 0,
    );
  }
}
