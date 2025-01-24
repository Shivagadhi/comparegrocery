import 'package:comparegrocery/presentation/pages/detail_screen/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../core/app_export.dart';
import 'widgets/listapples_item_widget.dart';
import 'widgets/listfruits_one_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key}) : super(key: key);

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
}

class HomeInitialPageState extends State<HomeInitialPage> {
  TextEditingController searchthreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  _buildContentSection()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContentSection() {
    return Container(
        height: 100.h, // Added .h
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogo,
                height: 15.h, // Added .h
                width: double.infinity, // Added .h
              ),
              Padding(
                padding: EdgeInsets.only(left: 2.h, right: 2.h), // Added .h
                child:
                    SearchButton(searchthreeController: searchthreeController),
              ),
              SizedBox(height: 2.h), // Added .h
              _buildFruitsSection(),
              SizedBox(height: 3.h), // Added .h
              _buildTrendingPricesSection(),
              SizedBox(height: 3.h), // Added .h
              _buildCommunitySubmissionsSection()
            ],
          ),
        ));
  }

  Widget _buildFruitsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h), // Added .h
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (index) => ListfruitsOneItemWidget())
                ..insertBetween(SizedBox(width: 10.h)), // Added .h
            ),
          ),
          // Container(
          //   height: 16.h, // Added .h
          //   margin: EdgeInsets.only(right: 6.h), // Added .h
          //   child: Stack(
          //     alignment: Alignment.centerLeft,
          //     children: [
          //       CustomImageView(
          //         imagePath: ImageConstant.imgBackground16x370,
          //         height: 8.h, // Added .h
          //         width: double.maxFinite,
          //       ),
          //       CustomImageView(
          //         imagePath: ImageConstant.imgImage6x4,
          //         height: 6.h, // Added .h
          //         width: 6.h, // Added .h
          //         alignment: Alignment.topLeft,
          //         margin: EdgeInsets.only(left: 6.h, top: 4.h), // Added .h
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _buildTrendingPricesSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 6.h), // Added .h
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h), // Added .h
            child: Text(
              "Trending Prices",
              style: CustomTextStyles.titleMediumBluegray80001,
            ),
          ),
          SizedBox(height: 2.h), // Added .h
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(3, (index) => ListapplesItemWidget(
                onTapImgImageone: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailScreen(),))
            ),
              )
                ..insertBetween(SizedBox(width: 6.h)), // Added .h
            ),
          ),
          // Container(
          //   height: 8.h, // Added .h
          //   width: 378.h, // Added .h
          //   margin: EdgeInsets.only(left: 10.h), // Added .h
          //   decoration: BoxDecoration(
          //     color: theme.colorScheme.onPrimary,
          //   ),
          // )
        ],
      ),
    );
  }

  Widget _buildCommunitySubmissionsSection() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.symmetric(horizontal: 3.h), // Added .h
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Community Submissions",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 2.h), // Added .h
            GestureDetector(
              onTap: () => onTapRowbananasone(context),
              child: Container(
                // Added Container for sizing
                // width: 288.w, // Match error size
                height: 20.h, // Match error size
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage7,
                      height: 8.5.h, // Added .h
                      width: 16.w, // Added .h
                      radius: BorderRadius.circular(1.h), // Added .h
                    ),
                    SizedBox(width: 2.h), // Added .h
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bananas",
                            style: CustomTextStyles.titleSmallGray70008,
                          ),
                          SizedBox(height: 2.h), // Added .h
                          Text(
                            "Submitted by User123",
                            style: CustomTextStyles.titleMediumBluegray800
                                .copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.3.sp,
                              height: 1.4,
                              leadingDistribution: TextLeadingDistribution.even,
                              color: appTheme.gray40007,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Navigation Methods
  void onTapImgImageone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailScreen);
  }

  void onTapRowbananasone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.userreviewScreen);
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.searchthreeController,
  });

  final TextEditingController searchthreeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: searchthreeController,
            decoration: InputDecoration(
              hintText: "Search groceries",
              hintStyle: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 14.sp, // Fixed from .spa to .sp
              ),
              contentPadding:
                  EdgeInsets.fromLTRB(2.h, 2.5.h, 3.5.h, 2.5.h), // Added .h
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.h), // Added .h
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.h), // Added .h
                borderSide: BorderSide(color: Colors.grey.shade300),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2.h), // Added .h
                borderSide: BorderSide(
                    color: Colors.blue.shade400, width: 0.5.h), // Added .h
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search, size: 5.h), // Added .h
              suffixIcon: searchthreeController.text.isEmpty
                  ? null
                  : IconButton(
                      icon: Icon(Icons.clear, size: 5.h), // Added .h
                      onPressed: () => searchthreeController.clear(),
                    ),
            ),
            style: TextStyle(
              fontSize: 14.sp, // Fixed from .spa to .sp
              color: Colors.black87,
            ),
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            onChanged: (value) => _performSearch(value),
            onSubmitted: (value) => _performSearch(value),
            autocorrect: false,
          ),
        ),
      ],
    );
  }
}

void _performSearch(String value) {
  // Implement search functionality
}

extension ListExtension<T> on List<T> {
  List<T> insertBetween(T separator) {
    if (length <= 1) return this;
    return List.generate(
      length * 2 - 1,
      (index) => index.isEven ? this[index ~/ 2] : separator,
    );
  }
}
