import 'package:flutter/material.dart';
import 'package:lab_mgt/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 46.v),
          child: Column(
            children: [
              Spacer(
                flex: 51,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLogo1,
                height: 65.v,
                width: 248.h,
              ),
              Spacer(
                flex: 48,
              ),
              Text(
                "Developed By DTM Solutions",
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
