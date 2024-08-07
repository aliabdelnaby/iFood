import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widget/custom_app_bar_section.dart';
import '../widget/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

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
            CustomAppBarSection(
              username: username,
              searchController: searchController,
            ),
            const SizedBox(height: 16),
            Expanded(
              flex: 3,
              child: HomeViewBody(
                searchController: searchController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
