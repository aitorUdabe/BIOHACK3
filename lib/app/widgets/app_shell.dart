import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../router/app_routes.dart';

class AppShell extends StatelessWidget {
  const AppShell({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    return Scaffold(
      body: SafeArea(child: child),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _indexFor(location),
        onDestinationSelected: (index) => context.go(_routeFor(index)),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(Icons.today_outlined),
            selectedIcon: Icon(Icons.today),
            label: 'Plan',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_circle_outline),
            selectedIcon: Icon(Icons.add_circle),
            label: 'Registrar',
          ),
          NavigationDestination(
            icon: Icon(Icons.insights_outlined),
            selectedIcon: Icon(Icons.insights),
            label: 'Insights',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
      ),
    );
  }

  int _indexFor(String location) {
    if (location.startsWith('/plan')) return 1;
    if (location.startsWith('/log')) return 2;
    if (location.startsWith('/insights')) return 3;
    if (location.startsWith('/settings')) return 4;
    return 0;
  }

  String _routeFor(int index) {
    return switch (index) {
      0 => AppRoutes.home,
      1 => AppRoutes.plan,
      2 => AppRoutes.quickLog,
      3 => AppRoutes.insights,
      4 => AppRoutes.settings,
      _ => AppRoutes.home,
    };
  }
}
