import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_export.dart';

class ListfruitsOneItemWidget extends StatelessWidget {
  const ListfruitsOneItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle item tap (e.g., navigate to fruits category)
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Container
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 10.h,
              width: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.h),
                image: DecorationImage(
                  image: AssetImage(ImageConstant.imgImage56x56),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // Spacing
          SizedBox(height: 1.h),

          // Text Label
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "Fruits",
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.labelLargeGray70006,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
