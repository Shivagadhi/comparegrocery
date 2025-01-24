import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);

  TextEditingController usernameInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 2.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo Image
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 15.h,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 4.h),

                // Login Text
                Text(
                  "Login",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 4.h),

                // Username Field
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: TextFormField(
                    controller: usernameInputController,
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: CustomTextStyles.titleSmallGray400,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                        vertical: 2.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),

                // Password Field
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: TextFormField(
                    controller: passwordInputController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: CustomTextStyles.titleSmallGray400,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 2.h,
                        vertical: 2.h,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4.h),

                // Sign In Button
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: CustomElevatedButton(
                    text: "Sign In",
                    onPressed: () {
                      onTapSignInButton(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  void onTapSignInButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreen);
  }
}
