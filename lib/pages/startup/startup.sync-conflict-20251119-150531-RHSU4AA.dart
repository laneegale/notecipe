import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:notecipe/pages/recipe_list/recipe_list.dart';
import 'package:notecipe/pages/main_shell.dart';

class StartupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // Main content goes here
      body: Center(
        child: SvgPicture.asset(
          'assets/logo-main.svg', // path to your SVG asset
          height: 300, // adjust as desired
          width: 300,
          semanticsLabel: 'App Logo',
        ),
      ),
      // Persistent button at the bottom
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Wrap content height
          children: [
            // Login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  bool loginSuccess = true;

                  if (loginSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainShellPage()),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ),
            SizedBox(height: 12), // Space between buttons
            // Register button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  // Your register action
                },
                child: Text('Register'),
              ),
            ),
            SizedBox(height: 12), // Space between buttons
            // Login with Google button with icon
            SizedBox(
              width: double.infinity,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Your Login with Google action
                },
                icon: Image.asset(
                  'assets/google-icon.png', // Change to your icon path
                  height: 24,
                  width: 24,
                ),
                label: Text('Login with Google'),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey),
                  foregroundColor: Colors.black87, // Text and icon color
                  padding: EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
