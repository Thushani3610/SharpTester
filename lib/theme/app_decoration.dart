import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue50,
      );
  static BoxDecoration get fillBlue10087 => BoxDecoration(
        color: appTheme.blue10087,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50.withOpacity(0.87),
      );
  static BoxDecoration get fillLightblue50 => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimary1 => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.76),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: appTheme.greenA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration();
  static BoxDecoration get outlineBlack9003f2 => BoxDecoration(
        color: appTheme.yellow900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f3 => BoxDecoration(
        color: appTheme.red700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f4 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f5 => BoxDecoration();
  static BoxDecoration get outlineBlack9003f6 => BoxDecoration(
        color: appTheme.blue50,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlackF => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black9003f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineLightBlue => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.85),
        border: Border(
          bottom: BorderSide(
            color: appTheme.lightBlue600,
            width: 10.h,
          ),
        ),
      );
  static BoxDecoration get outlineLightblue600 => BoxDecoration(
        border: Border.all(
          color: appTheme.lightBlue600,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder67 => BorderRadius.circular(
        67.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
