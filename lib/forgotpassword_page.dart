import 'package:flutter/material.dart';
import 'package:login_form/login_page.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Enter your email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Reset Password"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back), label: "Back"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
        onTap: (index) {
          if (index == 0) {
            // BACK
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          } else if (index == 1) {
            // HOME
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LoginPage()),
              (route) => false, // remove all previous routes
            );
          }
        },
      ),
    );
  }
}
