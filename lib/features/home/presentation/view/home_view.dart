import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifood/features/home/presentation/widget/custom_app_bar_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouterState state = GoRouterState.of(context);
    final extra = state.extra as Map<String, String>?;
    final String username = extra?['username'] ?? 'Unknown User';
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBarSection(username: username),
          ],
        ),
      ),
    );
  }
}
