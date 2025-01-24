import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Label text style
  static TextStyle get labelSmallGray40004 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray40004,
      );

  static TextStyle get labelSmallGray40005 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray40005,
      );

  static TextStyle get labelSmallGray40011 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray40011,
      );
  static TextStyle get labelSmallGray40004_1 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray40004,
      );

  static TextStyle get labelSmallIndigoA10001 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigoA10001,
      );

  static TextStyle get labelSmallIndigoA10002 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigoA10002,
      );

  static TextStyle get labelMediumGray700 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray700,
      );

  static TextStyle get labelMediumGray70005 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray70005,
      );

  static TextStyle get labelLargeGray70006 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray70006,
      );

  // Headline text style
  static TextStyle get headlineLargeBluegray90001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 20.sp,
      );

  static TextStyle get headlineLargeBluegray90002 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray90002,
        fontSize: 20.sp,
      );

  static TextStyle get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );

  // Body text style
  static TextStyle get bodyMediumGray40001 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40001,
      );

  static TextStyle get bodyMediumGray40007 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray40007,
      );

  // Title text style
  static TextStyle get titleMediumBluegray800 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 20.sp,
      );

  static TextStyle get titleMediumBluegray80001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 18.sp,
      );

  static TextStyle get titleMediumBluegray800Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleMediumGray800 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 18.sp,
      );

  static TextStyle get titleSmallDeeppurple100 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple100,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallDeeppurple10001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple10001,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallDeeppurple10002 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple10002,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray400 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray400,
      );

  static TextStyle get titleSmallGray40001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40001,
      );

  static TextStyle get titleSmallGray40002 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40002,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray40003 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40003,
      );

  static TextStyle get titleSmallGray4000315 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40003,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray40004 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40004,
      );

  static TextStyle get titleSmallGray40005 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40005,
      );

  static TextStyle get titleSmallGray40006 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40006,
      );

  static TextStyle get titleSmallGray40007 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40007,
      );

  static TextStyle get titleSmallGray40010 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40010,
      );

  static TextStyle get titleSmallGray40012 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray40012,
      );

  static TextStyle get titleSmallGray700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray70001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
      );

  static TextStyle get titleSmallGray7000115 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray70002 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70002,
      );

  static TextStyle get titleSmallGray70003 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70003,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray70004 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70004,
      );

  static TextStyle get titleSmallGray70007 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70007,
      );

  static TextStyle get titleSmallGray70008 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70008,
      );

  static TextStyle get titleSmallGray70009 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70009,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray70010 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70010,
        fontSize: 15.sp,
      );

  static TextStyle get titleSmallGray70010_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70010,
      );

  static TextStyle get titleSmallGray700_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );

  static TextStyle get titleSmallIndigoA100 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA100,
      );
}
