import 'package:flutter/material.dart';
import 'package:horsinaround/views/login_view.dart';

class MainMenuWithTabsView extends StatefulWidget {
  const MainMenuWithTabsView({super.key});

  @override
  State<MainMenuWithTabsView> createState() => _MainMenuWithTabsViewState();
}

class _MainMenuWithTabsViewState extends State<MainMenuWithTabsView>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 3, vsync: this);
    super.initState();

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab ${controller.index + 1}'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            tooltip: 'Çıkış Yap',
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginView(),
                ),
              );
            },
          ),
        ],
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              text: 'Liderlik',
              icon: Icon(Icons.leaderboard),
            ),
            Tab(
              text: 'Ana Menü',
              icon: Icon(Icons.home_filled),
            ),
            Tab(
              text: 'Profil',
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          Center(
            child: Text('Tab1 Content'),
          ),
          Center(
            child: Text('Tab2 Content'),
          ),
          Center(
            child: Text('Tab3 Content'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          controller.animateTo(2);
        }),
        child: const Icon(
          Icons.person,
          size: 32,
        ),
      ),
    );
  }
}
