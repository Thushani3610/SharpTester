import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TestlistItemWidget extends StatelessWidget {
  TestlistItemWidget({
    Key? key,
    this.onTapTest1,
  }) : super(
          key: key,
        );

  VoidCallback? onTapTest1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapTest1!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 19.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.outlineBlack9003f6.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgTestTube69x24,
              height: 69.v,
              width: 24.h,
              margin: EdgeInsets.only(bottom: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                top: 18.v,
                bottom: 26.v,
              ),
              child: Text(
                "Fasting Blood Sugar",
                style: theme.textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                top: 21.v,
                bottom: 19.v,
              ),
              child: CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                child: CustomImageView(
                  imagePath: ImageConstant.imgNext,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
