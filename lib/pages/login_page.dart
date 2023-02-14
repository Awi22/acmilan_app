import 'package:flutter/material.dart';
import 'package:acmilan_app/components/my_button.dart';
import 'package:acmilan_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //login user method
  void logInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                //Logo
                Image.asset('images/acm_logo.png'),

                const SizedBox(height: 25),

                //Username
                MyTextField(
                  controller: usernameController,
                  hintText: 'Username (email)',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //Password
                MyTextField(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 25),

                //Forgot Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Forgot your password?',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 4),
                    TextButton(
                      onPressed: () {
                        //* Forgot Password Page
                      },
                      child: Text(
                        'Click here',
                        style: TextStyle(
                          color: Colors.red[900],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                //Log In Button
                MyButton(
                  onTap: logInUser,
                  textButton: 'LOG IN',
                ),

                const SizedBox(height: 25),

                //Not Registered? Join us
                TextButton(
                  onPressed: () {
                    //* Registered Page
                  },
                  child: Text(
                    'Not Registered? Join us',
                    style: TextStyle(
                      color: Colors.red[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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
