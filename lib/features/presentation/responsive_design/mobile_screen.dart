import 'package:flutter/material.dart';
import 'package:responsive_app/common/widgets/custom_button_widgets.dart';
import 'package:responsive_app/common/widgets/custom_text_form_field_widgets.dart';
import 'package:responsive_app/common/widgets/text_widgets.dart';
import 'package:responsive_app/core/config/color/colors_manager.dart';
import 'package:responsive_app/core/config/constants/assets_manager.dart';
import 'package:responsive_app/core/config/constants/constants.dart';
import 'package:responsive_app/core/config/constants/font_manager.dart';
import 'package:responsive_app/core/config/constants/value_manager.dart';
import 'package:responsive_app/core/config/utils/utils.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = Utils().getScreenSize(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kSizedBox60,
              Image.asset(
                ImageAssets.logo,
                height: screenSize.height * 0.15,
              ),
              kSizedBox10,
              TextWidgets(
                text: 'Login',
                fontSize: screenSize.width * 0.08,
                color: ColorsManager.amber,
                fontWeight: FontWeightManager.bold,
              ),
              kSizedBox30,
              CustomTextFormFieldWidgets(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(
                  Icons.email,
                  color: ColorsManager.amber,
                ),
                width: screenSize.width * 0.8,
              ),
              kSizedBox20,
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
                width: screenSize.width * 0.8,
              ),
              kSizedBox20,
              Padding(
                padding: EdgeInsets.only(right: screenSize.width * 0.1),
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
              kSizedBox30,
              CustomButtonWidgets(
                text: 'Login',
                bgColor: ColorsManager.amber,
                textColor: ColorsManager.black,
                width: screenSize.width * 0.60,
              ),
              kSizedBox25,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p30),
                child: CustomButtonWidgets(
                  text: 'Sign Up',
                  bgColor: ColorsManager.black,
                  textColor: ColorsManager.amber,
                  borderColor: ColorsManager.amber,
                  width: screenSize.width * 0.60,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
