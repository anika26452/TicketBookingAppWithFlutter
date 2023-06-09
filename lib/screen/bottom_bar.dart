import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedindex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text("home"),
    const Text("Search"),
    const Text("Tickets"),
    const Text("profile")
  ];

  void _onitemTapped(int index) {
    _selectedindex = index;
    print('${_selectedindex}');
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedindex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          onTap: _onitemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
         // type: BottomNavigationBarType.fixed,
          unselectedItemColor: const Color(0xFF526480),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon:
                    Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
                label: "Home"),
          ]),
    );
  }
}
