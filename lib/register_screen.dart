import 'dart:ui';

import 'package:customer/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();

  bool obscureText = true;
  onChange() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Center(
                    child: Text(
                  "Register",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                )),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || !value.contains("@")) {
                        return "Invalid email";
                      } else {
                        return null;
                      }
                    },
                    controller: emailController,
                    decoration: const InputDecoration(
                        label: Text("Email"),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.red,
                        )),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return "Invalid password";
                      } else {
                        return null;
                      }
                    },
                    controller: passwordController,
                    obscureText: obscureText,
                    decoration: InputDecoration(
                      label: const Text("Password"),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.red,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () => onChange(),
                        icon: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 2.0,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.length < 11) {
                        return "Invalid phone number";
                      } else {
                        return null;
                      }
                    },
                    controller: phoneController,
                    // inputFormatters: [TextInputFormatter.withFunction((oldValue, newValue) => )],
                    decoration: const InputDecoration(
                      label: Text("Phone"),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red),
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate()) {
                        print("Validation Successful");
                        print(emailController.text);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                      }
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text("Register"),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
