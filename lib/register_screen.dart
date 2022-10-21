
import 'dart:ui';

import 'package:customer/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding:  const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ListView(
              children:  [
              const SizedBox(height: 100,),
              const Center(
                child: Text("Register", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
                )
              ),
               const SizedBox(height: 20,),
               const Card(
                elevation: 2.0,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email, color: Colors.red,)
                  ),
                ),
              ),
              const Card(
                elevation: 2.0,
                child: TextField(
                 decoration: InputDecoration(
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.lock, color: Colors.red,),
                    suffixIcon: Icon(Icons.visibility, color: Colors.grey,),
                  ),
                  
                ),
              ),
               const Card(
                elevation: 2.0,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text("Phone"),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    suffixIcon: Icon(
                      Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30,),

              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red
                ),
                onPressed:(){},
                 child: const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                   child: Text("Register"),
                 )
              ),

               const SizedBox(height: 30,),

               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text("Already have an account?"),
                  const SizedBox(width: 5,),

                  InkWell(
                    onTap:(){
                       Navigator.push(context, MaterialPageRoute(builder: 
                       (context)=>const LoginScreen()));
                    },
                    child: const Text("Login", style: TextStyle(color: Colors.red, 
                    fontWeight: FontWeight.bold),
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