import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_title.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';

class ReportViewScreen extends StatelessWidget {
  const ReportViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 34.v),
                child: Column(children: [
                  Text("Fasting Blood Sugar Report",
                      style: CustomTextStyles.headlineSmallInterBold),
                  SizedBox(height: 21.v),
                  _buildFastingBloodSugar(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack30x30,
            margin: EdgeInsets.only(left: 28.h, top: 11.v, bottom: 14.v),
            onTap: () {
              onTapBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Report View"));
  }

  /// Section Widget
  Widget _buildFastingBloodSugar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        child: Column(children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle15,
              height: 165.v,
              width: 304.h,
              radius: BorderRadius.circular(5.h)),
          SizedBox(height: 41.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Test metrics:", style: theme.textTheme.titleMedium),
                    SizedBox(height: 8.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("Sugar Count : 44",
                            style: CustomTextStyles.bodyLargeInriaSansPrimary)),
                    SizedBox(height: 7.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("Sugar Count : 44",
                            style: CustomTextStyles.bodyLargeInriaSansPrimary)),
                    SizedBox(height: 8.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("Sugar Count : 44",
                            style: CustomTextStyles.bodyLargeInriaSansPrimary)),
                    SizedBox(height: 8.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text("Sugar Count : 44",
                            style: CustomTextStyles.bodyLargeInriaSansPrimary))
                  ]))
        ]));
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportScreen);
  }
}
