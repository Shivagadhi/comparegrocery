import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';

class UserreviewScreen extends StatelessWidget {
  const UserreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.only(top: 2.h),
            decoration: AppDecoration.fillOnPrimary,
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: AppBar(
                    leading: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Hari’s Review",
                      style: CustomTextStyles.headlineLargeBluegray90002,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                _buildUserReviewRow(context),
                SizedBox(height: 2.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Comments",
                      style: CustomTextStyles.titleMediumBluegray800,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                _buildCommentsSection(context),
                SizedBox(height: 2.h),
                _buildInteractionButtons(context),
                // SizedBox(height: 288.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget - User Review Row
  Widget _buildUserReviewRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage64x82,
            height: 12.h,
            width: 16.h,
            radius: BorderRadius.circular(2.h),
          ),
          SizedBox(width: 2.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hari",
                  style: CustomTextStyles.titleSmallGray70003,
                ),
                SizedBox(height: 2.h),
                Text(
                  "Great quality apples!",
                  style: CustomTextStyles.titleSmallGray40002,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget - Comments Section
  Widget _buildCommentsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h, right: 4.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage1,
                  height: 12.h,
                  width: 16.h,
                  radius: BorderRadius.circular(2.h),
                ),
                SizedBox(width: 2.h),
                Expanded(
                  child: _buildUserComment(
                    context,
                    userName: "User123",
                    comment: "I agree, they are fresh!",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: 12.h,
                  width: 16.h,
                  radius: BorderRadius.circular(2.h),
                ),
                SizedBox(width: 2.h),
                Expanded(
                  child: _buildUserComment(
                    context,
                    userName: "User456",
                    comment: "Bought them yesterday, very tasty.",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget - Interaction Buttons
  Widget _buildInteractionButtons(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              child: Text("Like"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(
                    vertical: 4.h), // Use .h for vertical padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      4.w), // Changed to width-based radius
                ),
                textStyle: TextStyle(fontSize: 15.sp),
                backgroundColor: Colors.blueAccent,
                foregroundColor: appTheme.deepPurple100,
              ),
            ),
          ),
          SizedBox(width: 2.w), // Use .w for horizontal spacing
          Expanded(
            child: ElevatedButton(
              child: Text("Comment"),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      4.w), // Consistent width-based radius
                ),
                textStyle: TextStyle(fontSize: 15.sp),
                backgroundColor: appTheme.deepPurple50,
                foregroundColor: appTheme.indigoA100,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common Widget - User Comment
  Widget _buildUserComment(
    BuildContext context, {
    required String userName,
    required String comment,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: CustomTextStyles.titleSmallGray70003.copyWith(
            color: appTheme.gray70003,
            fontSize: 15.sp,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          comment,
          style: CustomTextStyles.titleSmallGray40003.copyWith(
            color: appTheme.gray40003,
            fontSize: 15.sp,
          ),
        ),
      ],
    );
  }

  /// Navigation Method
  void onTapImageone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailScreen);
  }
}
