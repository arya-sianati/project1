import 'package:flutter/material.dart';
import 'package:project1/data/notifiers.dart';
import 'package:project1/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
            
            return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(''),
              Image.asset(
                    'assets/images/chess1.png',
                    width: 300,
                    height: 300,
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
              const SizedBox(height: 5),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WidgetTree()),
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: isDarkMode ? Colors.white : Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Get Started'),
              ),

              const SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WidgetTree()),
                  );
                },
                child: const Text('Login'),
              ),
            ],
          );
          },)
        ),
      ),
    );
  }
}
