import 'package:flutter/material.dart';
import 'exit_widget.dart';
import 'main_options.dart';
import 'other_options.dart';

class AccountViewBodySection extends StatelessWidget {
  const AccountViewBodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 23),
      child: Column(
        children: [
          MainOptions(),
          SizedBox(height: 17),
          OtherOtions(),
          SizedBox(height: 17),
          ExitWidget(),
          SizedBox(height: 17),
        ],
      ),
    );
  }
}
