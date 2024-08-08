import 'package:flutter/material.dart';

import '../../../../core/utils/app_text_styles.dart';

class ViewAllWidget extends StatelessWidget {
  const ViewAllWidget({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 23.0),
      child: InkWell(
        onTap: onTap,
        child: const Align(
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
