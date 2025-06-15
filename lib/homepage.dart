import 'dart:ui';

import 'package:coffeeshop/home_page_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? _selectedCoffeeType;
  int _selectedindex = 0;

  final List<Widget> _pages = [
    const HomePageContent(),
    const Center(child: Text('Wishlist Page')),
    const Center(child: Text('Cart Page')),
    const Center(child: Text('Notification Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedindex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFfff8f4), // Background color of the rounded part
            borderRadius: BorderRadius.only(
              // ⭐ Apply border radius here
              topLeft:
                  Radius.circular(20.0), // Adjust value for desired roundness
              topRight: Radius.circular(20.0),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
              backgroundColor: Color(0xFFfff8f4),
              selectedItemColor: Color(0xFFC67C4E),
              unselectedItemColor: Color(0xFF8D8D8D),
              elevation: 10,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outlined),
                  label: "Wishlist",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_bag), label: "Cart"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.notifications), label: "Notification"),
              ],
              currentIndex: _selectedindex,
              onTap: (index) => {
                setState(() {
                  _selectedindex = index;
                }),
              },
            ),
          ),
        ),
      ),
    );
  }
}
