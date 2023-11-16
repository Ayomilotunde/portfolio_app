import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';

import '../../components/auth_logo_heading.dart';
import '../../components/custom_label_text_form_field.dart';
import '../../components/custom_text_button.dart';
import '../../constants/app_constants.dart';
import '../../services/networking/web_apis/user_api.dart';
import '../../utils/button.dart';
import '../../utils/next_screen.dart';
import '../../utils/snackbar.dart';
import '../home_page/homepage.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColour,
        elevation: 0,
      ),
      body: LoadingOverlay(
        isLoading: _isLoading,
        progressIndicator: const CircularProgressIndicator.adaptive(),
         color: Colors.transparent,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0, left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const AuthHeading(
                  heading: 'Welcome Back',
                  subHeading: '',
                ),
                k30VerticalSpacing,
                CustomLabelInputText(
                  label: 'Email',
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                  placeholder: 'Enter your email',
                ),
                k20VerticalSpacing,
                CustomLabelInputText(
                  label: 'Enter Password',
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  inputAction: TextInputAction.done,
                  placeholder: '*******',
                ),
                k10VerticalSpacing,
                Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                        height: 40,
                        width: 150,
                        child: CustomTextButton(
                            text: 'Forgot Password?',
                            onPressed: () {
                            },
                            backgroundColour: kBackgroundColour,
                            borderColour: kBackgroundColour,
                            textColour: kPrimaryColour))),
                k20VerticalSpacing,
                Button(
                  onPressed: () {
                    _submitLogin(context);
                  },
                  text: 'Login',
                  color: kButtonColour2,
                  textColor: kPrimaryColour,
                ),
                k30VerticalSpacing,
                Button(
                  onPressed: () {
                    nextScreenReplace(context, const Homepage());
                  },
                  text: 'Proceed as Guest',
                  color: kPrimaryColour,
                  textColor: kButtonColour2,
                ),
                k30VerticalSpacing,
                Align(
                  alignment: Alignment.center,
                  child: RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: 'Don’t have an account? ',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Create Account',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kPrimaryColour,
                                fontSize: 14),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                              }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _submitLogin(BuildContext context) async {
    if (emailController.text.isNotEmpty || passwordController.text.isNotEmpty) {
      await loginUser(context);
      return;
    }
    openSnackBar(context, 'Fill in the form properly!', kSecondaryColour);
  }


  Future<void> loginUser(BuildContext context) async {
    _makeLoadingTrue();
    final res = await UserApi.loginUser(
        email: emailController.text, password: passwordController.text);
    final data = jsonDecode(res.body);
    debugPrint(data);
    if (res.statusCode == 200 || res.statusCode == 201) {
      _makeLoadingFalse();
      if (!mounted) return;
      openSnackBar(context, "${data['msg']}", kSecondaryColour);
      nextScreenReplace(context, const Homepage());
    } else {
      _makeLoadingFalse();
      if (!mounted) return;
      openSnackBar(context, "${data['msg']}", kSecondaryColour);
    }
  }

  void _makeLoadingFalse() {
    setState(() {
      _isLoading = false;
    });
  }

  void _makeLoadingTrue() {
    setState(() {
      _isLoading = true;
    });
  }

}
