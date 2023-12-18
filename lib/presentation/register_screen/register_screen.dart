import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';
import 'package:lab_mgt/widgets/custom_elevated_button.dart';
import 'package:lab_mgt/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  TextEditingController confirmPasswordFieldController =
      TextEditingController();

  TextEditingController birthdayFieldController = TextEditingController();

  TextEditingController ageFieldController = TextEditingController();

  TextEditingController weightFieldController = TextEditingController();

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
                    padding: EdgeInsets.symmetric(horizontal: 43.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Text("Register",
                              style: CustomTextStyles.displayMediumMedium),
                          SizedBox(height: 19.v),
                          _buildEmailField(context),
                          SizedBox(height: 29.v),
                          _buildPasswordField(context),
                          SizedBox(height: 29.v),
                          _buildConfirmPasswordField(context),
                          SizedBox(height: 29.v),
                          _buildBirthdayField(context),
                          SizedBox(height: 29.v),
                          _buildAgeField(context),
                          SizedBox(height: 29.v),
                          _buildWeightField(context),
                          SizedBox(height: 32.v),
                          Text("Have you got an account?",
                              style: CustomTextStyles.titleLargeRegular),
                          SizedBox(height: 27.v),
                          _buildRegisterButton(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        controller: emailFieldController,
        hintText: "Enter your Email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Enter your Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true);
  }

  /// Section Widget
  Widget _buildConfirmPasswordField(BuildContext context) {
    return CustomTextFormField(
        controller: confirmPasswordFieldController,
        hintText: "Confirm your Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 15.v));
  }

  /// Section Widget
  Widget _buildBirthdayField(BuildContext context) {
    return CustomTextFormField(
        controller: birthdayFieldController, hintText: "Enter your Birthday");
  }

  /// Section Widget
  Widget _buildAgeField(BuildContext context) {
    return CustomTextFormField(
        controller: ageFieldController, hintText: "Enter your Age (cm)");
  }

  /// Section Widget
  Widget _buildWeightField(BuildContext context) {
    return CustomTextFormField(
        controller: weightFieldController,
        hintText: "Enter your Weight (Kg)",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        height: 54.v,
        text: "Register",
        margin: EdgeInsets.only(left: 33.h, right: 37.h),
        buttonStyle: CustomButtonStyles.fillPrimaryTL27,
        buttonTextStyle: CustomTextStyles.titleLargeLightblue50,
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
