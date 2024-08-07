import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widget/custom_app_bar_section.dart';
import '../widget/home_view_body.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBarSection(username: username),
            const SizedBox(height: 16),
            const Expanded(
              child: HomeViewBody(),
            ),
          ],
        ),
      ),
    );
  }
}
