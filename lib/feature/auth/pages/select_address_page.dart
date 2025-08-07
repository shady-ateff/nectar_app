import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/components/custom_button.dart';
import 'package:nectar_app/components/custom_text_form_field.dart';

class SelectAddressPage extends StatelessWidget {
  const SelectAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Select Address'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/map.svg',
                width: 228,
                // height: 100,
              ),
              const SizedBox(height: 40),
              const Text(
                'Select Your Address',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              const Text(
                'Swithch on your location to stay in tune with what’s happening in your area',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 160),
              CustomTextFormField(
                label: "Address",
                hintText: "Cairo, Egypt",
                obscureText: false,
              ),
              const SizedBox(height: 78),
              CustomButton(text: "Submit", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
