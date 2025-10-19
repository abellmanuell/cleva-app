import 'package:cleva_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:cleva_app/icons/cleva_icons.dart';

class BottomNavigationRoute extends StatefulWidget {
  const BottomNavigationRoute({super.key});

  @override
  State<BottomNavigationRoute> createState() => _BottomNavigationRouteState();
}

class _BottomNavigationRouteState extends State<BottomNavigationRoute> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [const HomePage()];

    int currentPage = 0;

    return Scaffold(
      body: IndexedStack(index: currentPage, children: pages),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        items: const [
          BottomNavigationBarItem(icon: Icon(ClevaIcon.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(ClevaIcon.points),
            label: "Points",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_outlined),
            label: "History",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_rounded),
            label: "Card",
          ),

          BottomNavigationBarItem(icon: Icon(ClevaIcon.user), label: "Points"),
        ],
      ),
    );
  }
}
