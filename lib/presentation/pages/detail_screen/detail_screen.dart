import 'package:comparegrocery/core/utils/image_constant.dart';
import 'package:comparegrocery/presentation/pages/detail_screen/widgets/list_one_item_widget.dart';
import 'package:comparegrocery/presentation/pages/user_review/userreview_screen.dart';
import 'package:comparegrocery/routes/app_routes.dart';
import 'package:comparegrocery/theme/custom_text_style.dart';
import 'package:comparegrocery/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../theme/theme_helper.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          width: double.maxFinite,
          color: Colors.white,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 4.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildApplesSection(context),
                    SizedBox(height: 4.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        indent: 2.h,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "Price Details",
                        style: CustomTextStyles.titleMediumGray800,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "Local Market",
                        style: CustomTextStyles.titleSmallGray70001,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "\$1.20/kg",
                        style: CustomTextStyles.titleSmallGray4000315,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "SuperMart",
                        style: CustomTextStyles.titleSmallGray70002,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text(
                        "\$1.30/kg",
                        style: CustomTextStyles.titleSmallGray40004,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    _buildCommunityReviews(context),
                    SizedBox(height: 1.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget: AppBar

  /// Section Widget: Apples Section
  Widget _buildApplesSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 1.h, top: 5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Apples",
            style: CustomTextStyles.headlineLargeBluegray90001,
          ),
          SizedBox(height: 2.h),
          Container(
            width: double.maxFinite,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 2.h,
                children: List.generate(
                  2,
                  (index) {
                    return ListOneItemWidget();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget: Community Reviews
  Widget _buildCommunityReviews(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Community Reviews",
            style: CustomTextStyles.titleMediumBluegray800Medium,
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: GestureDetector(
                    onTap: () {
                      onTapRowuser789one(context);
                    },
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage64x82,
                          height: 8.h,
                          width: 10.h,
                          radius: BorderRadius.circular(2.h),
                        ),
                        SizedBox(width: 1.h),
                        Expanded(
                          child: _buildUserReviewSam(
                            context,
                            user321One: "Hari",
                            bestpriceinOne: "Great quality apples!",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage64x80,
                        height: 8.h,
                        width: 10.h,
                        radius: BorderRadius.circular(2.h),
                      ),
                      SizedBox(width: 1.h),
                      Expanded(
                        child: _buildUserReviewSam(
                          context,
                          user321One: "Sam",
                          bestpriceinOne: "Best price in town.",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common Widget: User Review
  Widget _buildUserReviewSam(
    BuildContext context, {
    required String user321One,
    required String bestpriceinOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          user321One,
          style: CustomTextStyles.titleSmallGray70003.copyWith(
            color: appTheme.gray70003,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 1.h),
        Text(
          bestpriceinOne,
          style: CustomTextStyles.titleSmallGray40001.copyWith(
            color: appTheme.gray40001,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }

  /// Navigates to the userreviewScreen when the action is triggered.
  void onTapRowuser789one(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserreviewScreen(),
        ));
  }
}
