import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/components/custom_button.dart';
import 'package:nectar_app/components/custom_text_form_field.dart';
import 'package:nectar_app/core/extensions/navigation.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/auth/pages/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Column(
              spacing: 15,
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 60,
                  height: 60,
                ),
                SizedBox(height: 99), // Replace with your SVG path
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Please enter your credentials to login',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  label: "Email",
                  hintText: "Enter your email",
                  obscureText: false,
                ),

                SizedBox(height: 10),
                CustomTextFormField(
                  label: "Password",
                  hintText: "Enter your password",
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        // Navigate to forgot password page
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(color: AppColors.secondary),
                      ),
                    ),
                  ],
                ),

                CustomButton(
                  text: "Log in",
                  onPressed: () {
                  },
                ),

                RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    children: [
                      TextSpan(
                        text: 'Sign Up',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            replaceTo(context, SignupPage());
                          },
                      ),
                    ],
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
