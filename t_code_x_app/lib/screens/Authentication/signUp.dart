import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:t_code_x_app/components/optionSelector.dart';
import 'package:t_code_x_app/components/textFeild.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController nom = TextEditingController();
    TextEditingController prenom = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController age = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  'Sign Up',
                  style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: MyTextFeild(
                    controller: nom,
                    hintText: 'Kid\'s Last name',
                    errorText: 'Please Enter your Last name',
                    isObscure: false,
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: MyTextFeild(
                    controller: prenom,
                    hintText: 'Kid\'s First name',
                    errorText: 'Please Enter your First name',
                    isObscure: false,
                    keyboardType: TextInputType.name,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: MyTextFeild(
                    controller: phone,
                    hintText: 'Parent\'s Phone number',
                    errorText: 'Please Enter your phone number',
                    isObscure: false,
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: MyTextFeild(
                    controller: email,
                    hintText: 'Parent\'s Email',
                    errorText: 'Please Enter your email',
                    isObscure: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: MyTextFeild(
                    controller: password,
                    hintText: 'Password',
                    errorText: 'Please Enter your password',
                    isObscure: true,
                    keyboardType: TextInputType.text,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: MyTextFeild(
                    controller: age,
                    hintText: 'Age',
                    errorText: 'Please Enter your Kid\'s age',
                    isObscure: false,
                    keyboardType: TextInputType.phone,
                  ),
                ),
                OptionSelector(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
