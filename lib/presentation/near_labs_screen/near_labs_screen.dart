import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_leading_image.dart';
import 'package:lab_mgt/widgets/app_bar/appbar_title.dart';
import 'package:lab_mgt/widgets/app_bar/custom_app_bar.dart';
import 'package:lab_mgt/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class NearLabsScreen extends StatelessWidget {
  NearLabsScreen({Key? key}) : super(key: key);

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 16.v),
                child: Column(
                    children: [SizedBox(height: 7.v), _buildMap(context)])),
            bottomNavigationBar: _buildRecenter(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 58.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBack30x30,
            margin: EdgeInsets.only(left: 28.h, top: 12.v, bottom: 13.v),
            onTap: () {
              onTapBack(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "Near Labs"));
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
        height: 655.v,
        width: 348.h,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }

  /// Section Widget
  Widget _buildRecenter(BuildContext context) {
    return CustomElevatedButton(
        width: 140.h,
        text: "Recenter",
        margin: EdgeInsets.only(left: 127.h, right: 126.h, bottom: 36.v),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 1.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgReplay,
                height: 20.adaptSize,
                width: 20.adaptSize)));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
