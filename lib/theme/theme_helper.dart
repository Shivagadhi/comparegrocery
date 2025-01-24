import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  // A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _gerThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizerExt(6).h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding:EdgeInsetsDirectional.zero
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness:2,
        space:2,
        color:colorScheme.onPrimary,
      )
    );
  }
  LightCodeColors themeColor()=>_gerThemeColors();
  ThemeData themeData()=>_getThemeData();
}

class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 16.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 12.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 31.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray70004,
          fontSize: 12.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.deepPurpleA200,
          fontSize: 11.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray40009,
          fontSize: 9.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 19.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.sp,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
      );
}

class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF634AFF),
    secondaryContainer: Color(0XFF484D50),
    onPrimaryContainer: Color(0XFF2F2F32),
    onPrimary: Color(0XFFFFFFFF),
  );
}

class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // BlueGray
  Color get blueGray700 => Color(0XFF545457);
  Color get blueGray800 => Color(0XFF474C4F);
  Color get blueGray80001 => Color(0XFF494F52);
  Color get blueGray900 => Color(0XFF2E2D31);
  Color get blueGray90001 => Color(0XFF363639);
  Color get blueGray90002 => Color(0XFF343336);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFD5CEFF);
  Color get deepPurple10001 => Color(0XFFCFC7FF);
  Color get deepPurple10002 => Color(0XFFD7D1FF);
  Color get deepPurple50 => Color(0XFFEFECFF);
  Color get deepPurpleA200 => Color(0XFF7A37DE);

  // Gray
  Color get gray100 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFEBEBEE);
  Color get gray400 => Color(0XFFB7B5BF);
  Color get gray40001 => Color(0XFFBDBAC4);
  Color get gray40002 => Color(0XFFBCB9C4);
  Color get gray40003 => Color(0XFFBEBBC6);
  Color get gray40004 => Color(0XFFBFBCC6);
  Color get gray40005 => Color(0XFFBEBBC5);
  Color get gray40006 => Color(0XFFB9B7C1);
  Color get gray40007 => Color(0XFFBCBAC4);
  Color get gray40008 => Color(0XFFBDBAC5);
  Color get gray40009 => Color(0XFFC0BDC7);
  Color get gray40010 => Color(0XFFB9B6C0);
  Color get gray40011 => Color(0XFFC1BEC8);
  Color get gray40012 => Color(0XFFBCB9C3);
  Color get gray600 => Color(0XFF79747E);
  Color get gray700 => Color(0XFF565558);
  Color get gray70001 => Color(0XFF57575A);
  Color get gray70002 => Color(0XFF59585B);
  Color get gray70003 => Color(0XFF5A595C);
  Color get gray70004 => Color(0XFF5E5D60);
  Color get gray70005 => Color(0XFF69686B);
  Color get gray70006 => Color(0XFF616063);
  Color get gray70007 => Color(0XFF575659);
  Color get gray70008 => Color(0XFF58585B);
  Color get gray70009 => Color(0XFF555558);
  Color get gray70010 => Color(0XFF5B5A5D);
  Color get gray800 => Color(0XFF42474B);

  Color get indigoA100 => Color(0XFF8875FF);
  Color get indigoA10001 => Color(0XFF9382FF);
  Color get indigoA10002 => Color(0XFF9483FF);
}
