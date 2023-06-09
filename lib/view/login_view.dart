import 'package:f_38_app_jam/signInAndSingUpComponents/text_field.dart';
import 'package:f_38_app_jam/signInAndSingUpComponents/button_forgot_pass_or_sign_up.dart';
import 'package:f_38_app_jam/signInAndSingUpComponents/log_in_button.dart';
import 'package:f_38_app_jam/signInAndSingUpComponents/welcome_text.dart';
import 'package:f_38_app_jam/view/select_categories_page.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // text editing controllers
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  // sign in button function
  void logInUser() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Categories()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              const SizedBox(height: 100),

              // logo
              Image.asset(
                'assets/akademiLogo.png',
                height: 226,
              ),

              const SizedBox(height: 36), // space between logo and welcome text

              // welcome text
              const WelcomeText(),

              // email text field
              LoginTextField(
                controller: emailController,
                hintText: 'Email',
                obscureText: false,
              ),

              const SizedBox(height: 10), // space between email and password

              // password text field
              LoginTextField(
                controller: passwordController,
                hintText: 'Şifre',
                obscureText: true,
              ),

              const SizedBox(height: 10), // space between password and login

              // sign in button
              LogInButton(
                onTap: logInUser,
              ),

              const SizedBox(height: 10),
              // space between login and forgot password/sign Up button

              // forgot password/sign Up button
              const ForgotPassOrSignUpButton(),
            ]),
          ),
        ),
      ),
    );
  }
}
