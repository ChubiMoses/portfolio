import 'dart:ui';

import 'package:customer/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                  child: Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
              )),
              const SizedBox(
                height: 20,
              ),
              const Card(
                elevation: 2.0,
                child: TextField(
                  decoration: InputDecoration(
                      label: Text("Email"),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.red,
                      )),
                ),
              ),
              const Card(
                elevation: 2.0,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.red,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text("Login"),
                  )),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
