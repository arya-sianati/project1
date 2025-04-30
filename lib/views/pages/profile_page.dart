import 'package:flutter/material.dart';
import 'package:project1/data/notifiers.dart';
import 'package:project1/views/pages/welcome_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomePage()),
                  );
                  selectedPageNotifier.value = 0;
                },
                child: const Text('Logout'),
              ),

        ],
      ),
    );
  }
}