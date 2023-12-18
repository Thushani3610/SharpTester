import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyLargeInriaSansLightblue600 =>
      theme.textTheme.bodyLarge!.inriaSans.copyWith(
        color: appTheme.lightBlue600,
        fontSize: 18.fSize,
      );
  static get bodyLargeInriaSansLightblue600_1 =>
      theme.textTheme.bodyLarge!.inriaSans.copyWith(
        color: appTheme.lightBlue600,
      );
  static get bodyLargeInriaSansPrimary =>
      theme.textTheme.bodyLarge!.inriaSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeInriaSansPrimary18 =>
      theme.textTheme.bodyLarge!.inriaSans.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  // Display text style
  static get displayMediumMedium => theme.textTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineLargeLightblue600 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.lightBlue600,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallBlue50 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blue50,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallInterBold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterLightblue50 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.lightBlue50.withOpacity(0.87),
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallInterPrimary =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallLight => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Title text style
  static get titleLargeBlue50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue50,
      );
  static get titleLargeInriaSans =>
      theme.textTheme.titleLarge!.inriaSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInriaSansGray40001 =>
      theme.textTheme.titleLarge!.inriaSans.copyWith(
        color: appTheme.gray40001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInriaSansLightblue50 =>
      theme.textTheme.titleLarge!.inriaSans.copyWith(
        color: appTheme.lightBlue50,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLight => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get titleLargeLightblue50 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightBlue50,
      );
  static get titleLargeLightblue50_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.lightBlue50.withOpacity(0.87),
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
