import 'package:flutter/material.dart';

class BottmNavigation extends StatefulWidget {
  const BottmNavigation({super.key});

  @override
  State<BottmNavigation> createState() => _BottmNavigationState();
}

class _BottmNavigationState extends State<BottmNavigation> {
  // 1. Create a variable to track which page is currently selected
  int _selectedIndex = 0;

  // 2. Create a list of widgets (pages) to show for each tab
  final List<Widget> _screens = [
    const Center(
      child: Text("Home Page"),
    ), // Replace with your Home Screen widget
    const Center(
      child: Text("Profile Page"),
    ), // Replace with your Profile Screen widget
    const Center(
      child: Text("Wishlist Page"),
    ), // Replace with your Wishlist Screen widget
    const Center(
      child: Text("Cart Page"),
    ), // Replace with your Cart Screen widget
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 3. Display the screen corresponding to the selected index
      body: _screens[_selectedIndex],

      bottomNavigationBar: NavigationBar(
        height: 80,
        elevation: 0,
        backgroundColor: Colors.amber,
        indicatorColor:
            Colors.white, // Makes the selected item look nicer
        // 4. Bind the current index to the navigation bar
        selectedIndex: _selectedIndex,

        // 5. Update the state when a user taps an icon
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: "Profile",
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_outline),
            selectedIcon: Icon(Icons.favorite),
            label: "Wishlist",
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
