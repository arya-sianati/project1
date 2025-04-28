import 'package:flutter/material.dart';
import 'package:project1/data/notifiers.dart';
import 'package:project1/views/pages/home_page.dart';
import 'package:project1/views/pages/profile_page.dart';

import 'widgets/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Project 1'),
        actions: [
          IconButton(onPressed: () {
            isDarkModeNotifier.value = !isDarkModeNotifier.value;
          }, icon: Icon(isDarkModeNotifier.value ? Icons.dark_mode : Icons.light_mode)),          
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder:  (context, selecedPage, child) {
          return pages.elementAt(selecedPage);
        },
      ),
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
