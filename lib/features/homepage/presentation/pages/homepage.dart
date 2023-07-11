import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resume_builder/core/custom_widgets/custom_text.dart';
import 'package:resume_builder/features/homepage/presentation/provider/homepage_provider.dart';
import 'package:resume_builder/features/profile_page/presentation/pages/profile_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Homeprovider>(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          provider.setSelectedIndex(value);
        },
        currentIndex: provider.selectedIndex,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.deepOrange,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.align_vertical_bottom), label: 'Menu'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
              label: 'Add'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Downloads'),
        ],
      ),
      appBar: AppBar(
        title: customText(context: context, text: 'Resume Builder'),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
