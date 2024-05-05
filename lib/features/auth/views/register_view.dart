import 'package:bellr_mobile/constants/ui_constants.dart';
import 'package:bellr_mobile/features/auth/widgets/rounded_small_button.dart';
import 'package:bellr_mobile/theme/pallete.dart';
import 'package:flutter/material.dart';
import 'package:bellr_mobile/features/auth/widgets/auth_field.dart';



import 'package:flutter/services.dart';class RegisterView extends StatefulWidget {
  const RegisterView({super.key});


  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final profilenameController = TextEditingController();
  final bioController = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UIConstants.appBar(),
      body: Center(
        child: SingleChildScrollView(
          child : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                AuthField(controller: usernameController, placeholder: 'Username'),
                const SizedBox(height: 25),
                AuthField(controller: emailController, placeholder: 'E-mail'),
                const SizedBox(height: 25),
                AuthField(controller: passwordController, placeholder : 'Password'),
                const SizedBox(height: 25),
                AuthField(controller: profilenameController, placeholder: 'Profile name'),
                const SizedBox(height: 25),
                AuthField(controller: bioController, placeholder : 'Bio'),
                const SizedBox(height: 25),
                RoundedSmallButton(label: 'Register', onTap: (){}, loading: loading),
                Row(
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {  Navigator.pushNamed(context, '/login'); },
                      child : const Text('Log in', style: TextStyle(
                        color : Pallete.blueColor,
            
                      ))
                    )
                  ]
                )
              ]
            ),
          )
        ))
    );
  }
}