import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ReportlistItemWidget extends StatelessWidget {
  ReportlistItemWidget({
    Key? key,
    this.onTapReport1,
  }) : super(
          key: key,
        );

  VoidCallback? onTapReport1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapReport1!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 23.v,
        ),
        decoration: AppDecoration.outlineBlack9003f6.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fasting Blood Sugar",
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "10 May 2023",
                    style: CustomTextStyles.bodyLargeGray400,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 13.v,
                right: 4.h,
                bottom: 11.v,
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
