import '../report_screen/widgets/reportlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_title.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';
import 'package:lab_mgt/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ReportScreen extends StatelessWidget {
  ReportScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 10.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 11.h, right: 10.h),
                      child: CustomSearchView(
                          controller: searchController,
                          hintText: "Search Reports...")),
                  SizedBox(height: 17.v),
                  _buildReportList(context)
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
        title: AppbarTitle(text: "Reports"));
  }

  /// Section Widget
  Widget _buildReportList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 10.v);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return ReportlistItemWidget(onTapReport1: () {
                onTapReport1(context);
              });
            }));
  }

  /// Navigates to the reportViewScreen when the action is triggered.
  onTapReport1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reportViewScreen);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
