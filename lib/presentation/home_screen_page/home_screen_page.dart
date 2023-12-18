import '../home_screen_page/widgets/reportbutton_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
                child: Column(children: [
                  Text("Good Evening, Deelaka!",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 20.v),
                  _buildHealthSuggestion(context),
                  SizedBox(height: 58.v),
                  _buildHomeScreen(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMenu,
            margin: EdgeInsets.fromLTRB(29.h, 13.v, 334.h, 13.v),
            onTap: () {
              onTapMenu(context);
            }));
  }

  /// Section Widget
  Widget _buildHealthSuggestion(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 92.h, vertical: 72.v),
        decoration: AppDecoration.outlineBlackF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.v),
              Text("Health suggetions",
                  style: CustomTextStyles.titleLargeBlue50)
            ]));
  }

  /// Section Widget
  Widget _buildHomeScreen(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(children: [
          Text("Services", style: CustomTextStyles.headlineSmallInter),
          SizedBox(height: 24.v),
          Padding(
              padding: EdgeInsets.only(right: 1.h),
              child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 138.v,
                      crossAxisCount: 2,
                      mainAxisSpacing: 12.h,
                      crossAxisSpacing: 12.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ReportbuttonItemWidget(onTapReportButton: () {
                      onTapReportButton(context);
                    });
                  }))
        ]));
  }

  /// Navigates to the reportScreen when the action is triggered.
  onTapReportButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportScreen);
  }

  /// Navigates to the homeScreenSideMenuScreen when the action is triggered.
  onTapMenu(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenSideMenuScreen);
  }
}
