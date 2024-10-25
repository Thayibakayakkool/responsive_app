import 'package:flutter/material.dart';
import 'package:responsive_app/common/widgets/custom_button_widgets.dart';
import 'package:responsive_app/common/widgets/custom_text_form_field_widgets.dart';
import 'package:responsive_app/common/widgets/text_widgets.dart';
import 'package:responsive_app/core/config/color/colors_manager.dart';
import 'package:responsive_app/core/config/constants/assets_manager.dart';
import 'package:responsive_app/core/config/constants/constants.dart';
import 'package:responsive_app/core/config/constants/font_manager.dart';
import 'package:responsive_app/core/config/utils/utils.dart';

class TabletScreen extends StatelessWidget {
  const TabletScreen({super.key});

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
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageAssets.logo,
                      height: screenSize.width * 0.3,
                    ),
                    TextWidgets(
                      text: 'Login',
                      fontSize: screenSize.width * 0.07,
                      color: ColorsManager.amber,
                      fontWeight: FontWeightManager.bold,
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextFormFieldWidgets(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorsManager.amber,
                        ),
                        width: screenSize.width * 0.5,
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
                        width: screenSize.width * 0.5,
                      ),
                      kSizedBox30,
                      Padding(
                        padding:
                            EdgeInsets.only(right: screenSize.width * 0.07),
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
