import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../core/app_export.dart';

class ListapplesItemWidget extends StatelessWidget {
  const ListapplesItemWidget({
    Key? key,
    this.onTapImgImageone,
  }) : super(key: key);

  final VoidCallback? onTapImgImageone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 20.h,
        child: ElevatedButton(
          onPressed: onTapImgImageone,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2.h),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Container(
            height: 20.h,
            width: 20.h,
            // margin: EdgeInsets.only(bottom: 64.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.h),
              image: DecorationImage(
                image: AssetImage(ImageConstant.imgImage6),
                fit: BoxFit.cover,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10.h),
                onTap: onTapImgImageone,
                splashColor: Colors.black12,
                highlightColor: Colors.blueGrey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
