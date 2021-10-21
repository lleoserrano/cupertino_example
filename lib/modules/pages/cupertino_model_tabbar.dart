import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'configuration_page.dart';
import 'cupertino_dates.dart';
import 'cupertino_slivers.dart';

class CupertinoModelTabbar extends StatelessWidget {
  const CupertinoModelTabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      backgroundColor: Colors.transparent,
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
                builder: (context) => const CupertinoSlivers());
          case 1:
            return CupertinoTabView(
                builder: (context) => const CupertinoDates());
          case 2:
            return CupertinoTabView(
                builder: (context) => const ConfigurationPage());

          default:
            return CupertinoTabView(
              builder: (context) => const Scaffold(
                body: Center(
                  child: Text("Error"),
                ),
              ),
            );
        }
      },

      // tabBar: InvisibleCupertinoTabBar(),
      tabBar: CupertinoTabBar(
        activeColor: const Color(0xff3B7BBF),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Slivers',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Timer e Data',
            icon: Icon(CupertinoIcons.time),
          ),
          BottomNavigationBarItem(
            label: 'Configuração',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
