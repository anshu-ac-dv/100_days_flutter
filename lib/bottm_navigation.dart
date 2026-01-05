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
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20),
          child: Text(
            "Welcome to PicHub",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Text("Explore the world of photography"),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10, left: 20),
          child: Text("Categories", style: TextStyle(fontSize: 20)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: SingleChildScrollView(
            child: Row(
              children: [
                // Image.asset("assets/google.png", height: 80,),
                // Image.asset("assets/google.png", height: 80,),
                // Image.asset("assets/google.png", height: 80,),
                // Image.asset("assets/google.png", height: 80,),
                // Image.asset("assets/google.png", height: 80,),
              ],
            ),
          ),
        ),
      ],
    ),
    const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 50)],
    ),
    const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 50)],
    ),
    const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 50)],
    ),
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
        indicatorColor: Colors.white, // Makes the selected item look nicer
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
