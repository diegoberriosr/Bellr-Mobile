import 'package:bellr_mobile/features/auth/view/login_view.dart';
import 'package:bellr_mobile/features/auth/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:bellr_mobile/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      initialRoute: '/login',
      routes : {
        '/login' : (context) => const LoginView(),
        '/register' : (context) => const RegisterView(),
      }
    );
  }
}


