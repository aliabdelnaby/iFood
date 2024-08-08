import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ifood/features/account/presentation/widgets/profile_heafer.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouterState state = GoRouterState.of(context);
    final extra = state.extra as Map<String, String>?;
    final String username = extra?['username'] ?? 'Unknown User';
    final String tableNumber = extra?['tableNumber'] ?? 'Unknown Table';
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileHeader(username: username, tableNumber: tableNumber),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
