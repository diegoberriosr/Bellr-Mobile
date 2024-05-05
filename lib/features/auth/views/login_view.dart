
import 'package:bellr_mobile/features/auth/widgets/auth_field.dart';
import 'package:bellr_mobile/features/auth/widgets/rounded_small_button.dart';
import 'package:bellr_mobile/theme/theme.dart';

import 'package:flutter/material.dart';
import 'package:bellr_mobile/constants/ui_constants.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  final appbar = UIConstants.appBar();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool loading = false;

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  Future<void> logIn() async {

    setState(() {
      loading = true;
    });

    // Get email and password from the user
    final String username = usernameController.text;
    final String password = passwordController.text;
  

    // Map it into a dictionary
    final Map<String, String> data = {
      'username' : username,
      'password' : password
    };

    // Clear the inputs
    usernameController.clear();
    passwordController.clear();


    final String jsonData = jsonEncode(data); // Encode the input into json format

    final Map<String, String> headers = {
      'Content-Type' : 'application/json'
    };

    // Make an authentication request to the server
    final response = await http.post(
      Uri.parse('https://bellr.onrender.com/token/'), 
      headers : headers,
      body: jsonData
      );


    if ( response.statusCode == 200) {
      print(' Response body: ${response.body}');
    }
    else {
      print('Over for that negro');
    };

    setState(() {
      loading = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : UIConstants.appBar(),
      body : Center(
        child: SingleChildScrollView(
          child : Padding(
            padding : const EdgeInsets.symmetric(horizontal:20),
            child : Column (
              children : [
                AuthField(controller: usernameController, placeholder: 'E-mail'),
                const SizedBox(height:25),
                AuthField(controller : passwordController, placeholder: 'Password'),
                Container(
                  alignment: Alignment.centerRight,
                  child: RoundedSmallButton(label: 'Log in', onTap: logIn, loading: loading)
                ),
                const SizedBox(height:25),
                Row(
                  children: [
                    const Text( 'Do not have an account ?'),
                    TextButton(
                      onPressed: () { Navigator.pushNamed(context, '/register');},
                      child: const Text('Sign in', style: TextStyle(
                        color: Pallete.blueColor
                      ))
                    )
                  ]
                )
              ]
            )
          )
        ),
      )
    );
  }
}