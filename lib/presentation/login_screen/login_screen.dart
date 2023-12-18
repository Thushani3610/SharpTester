import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/custom_elevated_button.dart';
import 'package:lab_mgt/widgets/custom_outlined_button.dart';
import 'package:lab_mgt/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 44.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Text("Login", style: theme.textTheme.displayMedium),
                          SizedBox(height: 51.v),
                          _buildEmailField(context),
                          SizedBox(height: 29.v),
                          _buildPasswordField(context),
                          SizedBox(height: 32.v),
                          Text("Forgot password",
                              style: CustomTextStyles.titleLargePrimary),
                          SizedBox(height: 27.v),
                          _buildLoginButton(context),
                          SizedBox(height: 18.v),
                          _buildSignInWithGoogleButton(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        controller: emailFieldController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v));
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        text: "Login",
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        buttonStyle: CustomButtonStyles.fillPrimaryTL27,
        buttonTextStyle: CustomTextStyles.titleLargeLightblue50,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildSignInWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        height: 54.v,
        text: "Sign in with Google",
        margin: EdgeInsets.symmetric(horizontal: 34.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 5.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFlatcoloriconsgoogle,
                height: 38.adaptSize,
                width: 38.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL27,
        buttonTextStyle: theme.textTheme.titleSmall!);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
