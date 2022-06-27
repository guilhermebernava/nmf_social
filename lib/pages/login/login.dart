import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nmf_social/pages/login/login_controller.dart';
import 'package:nmf_social/themes/app_colors.dart';
import 'package:nmf_social/widgets/button/button.dart';
import 'package:nmf_social/widgets/button_icon/button_icon.dart';
import 'package:nmf_social/widgets/divider_text/divider_text.dart';
import 'package:nmf_social/widgets/welcome_to/welcome_to.dart';
import '../../widgets/input/input.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final controller = LoginController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("LOGIN"),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: mediaQuery.size.width * 0.45),
                child: WelcomeTo(
                    fontSizeWelcome: 24, fontSizeTo: 36, to: "Rede Social"),
              ),
              Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    Input(
                        controller: emailController,
                        color: AppColors.white,
                        hintText: "Type your e-mail",
                        text: "E-mail",
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "E-mail can't be empty";
                          }
                          return null;
                        },
                        textInputType: TextInputType.emailAddress),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: mediaQuery.size.height * 0.03),
                      child: Input(
                          controller: passwordController,
                          ocultText: true,
                          color: AppColors.white,
                          hintText: "Type your password",
                          text: "Password",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Password can't be empty";
                            }
                            return null;
                          },
                          textInputType: TextInputType.emailAddress),
                    ),
                    Button(
                      context,
                      onTap: () async {
                        await controller.login(context, "/home",
                            emailController.text, passwordController.text);
                      },
                      title: "Enter",
                      size: mediaQuery.size,
                    ),
                  ],
                ),
              ),
              DividerText(
                context,
                text: "OR",
                size: mediaQuery.size,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ButtonIcon(
                    context,
                    icon: FontAwesomeIcons.google,
                    onTap: () => "",
                    size: mediaQuery.size,
                  ),
                  ButtonIcon(
                    context,
                    icon: FontAwesomeIcons.github,
                    onTap: () => "",
                    size: mediaQuery.size,
                  ),
                  ButtonIcon(
                    context,
                    icon: FontAwesomeIcons.airbnb,
                    onTap: () => "",
                    size: mediaQuery.size,
                  ),
                ],
              )
            ]),
      ),
    );
  }
}
