import 'package:flutter/cupertino.dart';
import 'package:lab_mgt/core/app_export.dart';

// ignore: must_be_immutable
class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: appTheme.blue10087,
        thumbColor: (value ?? false)
            ? appTheme.lightBlue600.withOpacity(0.6)
            : appTheme.lightBlue600.withOpacity(0.6),
        activeColor: appTheme.blue10087,
        onChanged: (value) {
          onChange(value);
        },
      );
}
