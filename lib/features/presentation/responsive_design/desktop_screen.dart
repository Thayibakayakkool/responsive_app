import 'package:flutter/material.dart';
import 'package:responsive_app/common/widgets/custom_button_widgets.dart';
import 'package:responsive_app/common/widgets/custom_text_form_field_widgets.dart';
import 'package:responsive_app/common/widgets/text_widgets.dart';
import 'package:responsive_app/core/config/color/colors_manager.dart';
import 'package:responsive_app/core/config/constants/assets_manager.dart';
import 'package:responsive_app/core/config/constants/constants.dart';
import 'package:responsive_app/core/config/constants/font_manager.dart';
import 'package:responsive_app/core/config/utils/utils.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.black,
        body: Center(
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                wSizedBox50,
                Image.asset(
                  ImageAssets.logo,
                  height: screenSize.width * 0.3,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidgets(
                        text: 'Login',
                        fontSize: screenSize.width * 0.06,
                        color: ColorsManager.amber,
                        fontWeight: FontWeightManager.bold,
                      ),
                      kSizedBox20,
                      CustomTextFormFieldWidgets(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorsManager.amber,
                        ),
                        width: screenSize.width * 0.48,
                      ),
                      kSizedBox30,
                      CustomTextFormFieldWidgets(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: ColorsManager.amber,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.visibility,
                            color: Colors.amber,
                          ),
                        ),
                        width: screenSize.width * 0.48,
                      ),
                      kSizedBox30,
                      Padding(
                        padding:
                            EdgeInsets.only(right: screenSize.width * 0.09),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextWidgets(
                            text: 'Forgot password?',
                            fontSize: FontSize.s15,
                            color: ColorsManager.amber,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      kSizedBox45,
                      CustomButtonWidgets(
                        text: 'Login',
                        bgColor: ColorsManager.amber,
                        textColor: ColorsManager.black,
                        width: screenSize.width * 0.35,
                      ),
                      kSizedBox25,
                      CustomButtonWidgets(
                        text: 'Sign Up',
                        bgColor: ColorsManager.black,
                        textColor: ColorsManager.amber,
                        borderColor: ColorsManager.amber,
                        width: screenSize.width * 0.35,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
