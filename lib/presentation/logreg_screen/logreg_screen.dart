import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/custom_elevated_button.dart';
import 'package:lab_mgt/widgets/custom_outlined_button.dart';

class LogregScreen extends StatelessWidget {
  const LogregScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.lightBlue50.withOpacity(0.87),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 44.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 24.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgPngwing1,
                          height: 215.v,
                          width: 259.h),
                      SizedBox(height: 48.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Welcome!",
                              style: theme.textTheme.displaySmall)),
                      SizedBox(height: 5.v),
                      SizedBox(
                          width: 300.h,
                          child: Text(
                              "Log in with your data that you\nentered during your registration.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleLargeLight)),
                      SizedBox(height: 25.v),
                      CustomElevatedButton(
                          height: 73.v,
                          text: "Login",
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallInterLightblue50,
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 25.v),
                      CustomOutlinedButton(
                          text: "Register",
                          onPressed: () {
                            onTapRegister(context);
                          })
                    ]))));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
