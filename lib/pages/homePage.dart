import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mk_watchshop/pages/cartPage.dart';
import 'package:mk_watchshop/pages/shopPage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int pageIndex = 0;
  List<Widget> pages = [Shoppage(), Cartpage()];

  void onTabChange(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Column(
            children: [
              DrawerHeader(child: Image.asset('assets/images/fastrack.png')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.trolley),
                title: Text("Cart"),
                onTap: () {},
              ),
              Spacer(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: GNav(
          tabs: [GButton(icon: Icons.home), GButton(icon: Icons.trolley)],
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.black,
          tabBorderRadius: 16,
          tabBackgroundColor: Colors.grey[300]!,
          iconSize: 30,
          onTabChange: (index) {
            onTabChange(index);
          },
        ),
      ),
      body: pages[pageIndex],
    );
  }
}
