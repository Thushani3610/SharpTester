import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';

// ignore: must_be_immutable
class ReportbuttongridItemWidget extends StatelessWidget {
  const ReportbuttongridItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          CustomImageView(
            imagePath: ImageConstant.imgTestResults,
            height: 65.adaptSize,
            width: 65.adaptSize,
          ),
          Container(
            width: 119.h,
            decoration: AppDecoration.outlineBlack9003f1,
            child: Text(
              "Reports",
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleLargeLightblue50_1,
            ),
          ),
        ],
      ),
    );
  }
}
