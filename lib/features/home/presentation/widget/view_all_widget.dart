import 'package:flutter/material.dart';
import '../../../../core/utils/app_text_styles.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 23.0, right: 23.0),
      child: InkWell(
        onTap: null,
        child: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'View All',
            style: AppStyles.style12w400,
          ),
        ),
      ),
    );
  }
}
