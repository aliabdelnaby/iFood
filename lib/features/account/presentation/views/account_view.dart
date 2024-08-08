import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/account_view_body.dart';
import '../widgets/profile_heafer.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeaderSection(
                username: username,
                tableNumber: tableNumber,
              ),
              const SizedBox(height: 40),
              const AccountViewBodySection(),
            ],
          ),
        ),
      ),
    );
  }
}
