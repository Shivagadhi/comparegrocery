import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_export.dart';

class ListOneItemWidget extends StatelessWidget {
  const ListOneItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          CustomImageView(
            imagePath: ImageConstant.imgImage164x220,
            height: 50.w,
            width: double.maxFinite,
            radius: BorderRadius.circular(2.h),
          ),
          SizedBox(height: 2.h),

          // Title Section
          Text(
            "Apples",
            style: CustomTextStyles.titleSmallGray700_1,
          ),
          SizedBox(height: 1.h),

          // Price Section
          Text(
            "Lowest \$1.20/kg",
            style: CustomTextStyles.bodyMediumGray40001,
          ),
        ],
      ),
    );
  }
}
