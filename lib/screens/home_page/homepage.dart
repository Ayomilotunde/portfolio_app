import 'package:flutter/material.dart';
import 'package:portfolio_app/components/custom_text.dart';
import 'package:portfolio_app/constants/app_constants.dart';
import 'package:portfolio_app/screens/home_page/components/contact_card.dart';
import 'package:portfolio_app/screens/portfolio/portfolio_page.dart';
import 'package:portfolio_app/utils/next_screen.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

import '../../components/custom_text_button.dart';
import '../portfolio/components/launch_uri.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final gitHubURI = Uri.parse('https://www.github.com/ayomilotunde');
  final portfolioURI = Uri.parse('https://ayomilotunde.github.io');
  final mediumURI = Uri.parse('https://medium.com/@ayomilotunde');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomNunitoText(
          text: 'My Portfolio',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomNunitoText(
                text: 'Welcome to my portfolio, I am Adeoye Ayomide.',
                textSize: 14,
                fontWeight: FontWeight.w600,
                alignText: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(width: 5, color: Colors.black)),
                child: Image.asset(
                  'assets/images/ayo.jpg',
                  fit: BoxFit.contain,
                  height: 140,
                  width: 140,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const CustomNunitoText(
                text:
                    'I am a Mobile Developer currently based in Ibadan, Oyo State, Nigeria. I have over 5 years experience in Mobile development. I ❤️ anything Mobile.',
                textSize: 14,
                fontWeight: FontWeight.w600,
                alignText: TextAlign.center,
              ),
              k20VerticalSpacing,
              const CustomNunitoText(
                text: 'You can connect with me.',
                textSize: 12,
                fontWeight: FontWeight.w400,
                alignText: TextAlign.start,
              ),
              k20VerticalSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContactCard(
                    iconImage: 'assets/images/email.png',
                    onClick: () {
                      UrlLauncher.launch(
                          "mailto:ayomilotunde02@gmail.com");
                    },
                  ),
                  ContactCard(
                    iconImage: 'assets/images/phone.png',
                    onClick: () {
                      UrlLauncher.launch(
                          "tel://+2348067700187");
                    },
                  ),
                ],
              ),
              k10VerticalSpacing,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContactCard(
                    iconImage: 'assets/images/github.png',
                    onClick: () {
                      customLaunchURL(context: context, url: gitHubURI);
                    },
                  ),
                  ContactCard(
                    iconImage: 'assets/images/portfolio.jpeg',
                    onClick: () {
                      customLaunchURL(context: context, url: portfolioURI);
                    },
                  ),
                  ContactCard(
                    iconImage: 'assets/images/medium.png',
                    onClick: () {
                      customLaunchURL(context: context, url: mediumURI);
                    },
                  ),
                ],
              ),
              k20VerticalSpacing,
              const CustomNunitoText(
                text:
                    'You can view my previous works clicking the button below.',
                textSize: 12,
                fontWeight: FontWeight.w400,
                alignText: TextAlign.start,
              ),
              k20VerticalSpacing,
              SizedBox(
                  height: 40,
                  width: 160,
                  child: CustomTextButton(
                      text: 'View Recent Works',
                      onPressed: () {
                        nextScreen(context, const Portfolio());
                      },
                      backgroundColour: kPrimaryColour,
                      borderColour: kBackgroundColour,
                      textColour: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
