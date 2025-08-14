import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/components/custom_button.dart';
import 'package:nectar_app/components/custom_text_form_field.dart';
import 'package:nectar_app/core/extensions/navigation.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/feature/auth/pages/login_page.dart';
import 'package:nectar_app/feature/auth/pages/select_address_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Form(
              key: _formKey,
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
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Please enter your credentials to continue',
                          style: TextStyle(color: Colors.grey[600], fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomTextFormField(
                    label: "Username",
                    hintText: "Enter your username",
                    obscureText: false,
                    textInputType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                  ),
                  CustomTextFormField(
                    label: "Email",
                    hintText: "Enter your email",
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
              
                  CustomTextFormField(
                    label: "Password",
                    hintText: "Enter your password",
                    obscureText: true,
                    textInputType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
              
                  RichText(
                    text: TextSpan(
                      text: 'By signing up, you agree to our ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      children: [
                        TextSpan(
                          text: 'Terms of Service',
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to terms of service page
                            },
                        ),
                        const TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigate to privacy policy page
                            },
                        ),
                      ],
                    ),
                  ),
              
                  CustomButton(
                    text: "Sign Up",
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {
                        replaceTo(context, SelectAddressPage());
                      }
                    },
                  ),
              
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      children: [
                        TextSpan(
                          text: 'Log in',
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              replaceTo(context, LoginPage());
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
      ),
    );
  }
}
