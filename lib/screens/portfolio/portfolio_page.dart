import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/portfolio/components/launch_uri.dart';
import 'package:portfolio_app/screens/portfolio/components/wrok_card.dart';

import '../../components/custom_text.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final ateasefourURI = Uri.parse('https://play.google.com/store/apps/details?id=com.ateasefour.ateasefour_user');
  final smartGenixURI = Uri.parse('https://ayomilotunde.github.io/');
  final tCollectionsURI = Uri.parse('https://play.google.com/store/apps/details?id=com.temmy.collctions.temmy_collections');
  final oneWaiterURI = Uri.parse('https://ayomilotunde.github.io/');
  final salonBookingURI = Uri.parse('https://github.com/Ayomilotunde/Apks/raw/main/Saloon%20App.apk');
  final mainMomentURI = Uri.parse('https://github.com/Ayomilotunde/Apks/raw/main/Main%20Moment.apk');
  final myNoteURI = Uri.parse('https://play.google.com/store/apps/details?id=com.ayomi.mynotes');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomNunitoText(
          text: 'My Recent Works',
        ),
        centerTitle: true,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              WorkCards(
                  title: 'Ateasefour',
                  description: "•  Implemented order tracking.\n"
                      "•  Implemented payment gateway using Paystack for android and ios.\n"
                      "•  Implemented ordering of cold foods and pharmaceutical products",
                  duration: 'September 2022  - March 2023',
                  programmingLanguage: 'Flutter',
              onClick: (){
                customLaunchURL(context: context, url: ateasefourURI);
              },
              ),
              WorkCards(
                  title: 'SmartGenix',
                  description: "•  Implemented figma design strictly.\n"
                      "•  Implemented payment gateway using Stripe for android and ios.\n"
                      "•  Implemented booking appointments using APIs.",
                  duration: 'July 2022  - September  2022',
                  programmingLanguage: 'Flutter',
                onClick: (){
                  customLaunchURL(context: context, url: smartGenixURI);
                },
              ),
              WorkCards(
                  title: 'T-Collections',
                  description: "•  Implemented order tracking.\n"
                      "•  Implemented payment gateway using Paystack for android and ios.\n"
                      "•  Implemented ordering of cold foods and pharmaceutical products",
                  duration: 'February 2023  - February 2023',
                  programmingLanguage: 'Flutter',
                onClick: (){
                  customLaunchURL(context: context, url: tCollectionsURI);
                },),
              WorkCards(
                  title: 'OneWaiter',
                  description: "•  Emulated the ios design strictly.\n"
                      "•  Implemented payment gateway using Stripe.\n"
                      "•  Implemented QR scanner.\n"
                      "•  Implemented real time location.\n"
                      "•  Implemented some algorithms for payments.\n"
                      "•  Did all other implementations.",
                  duration: 'Feb 15, 2022 - June 30 2022',
                  programmingLanguage: 'Kotlin',
                onClick: (){
                  customLaunchURL(context: context, url: oneWaiterURI);
                },),
              WorkCards(
                  title: 'Salon Booking',
                  description: "•  Designed and modified the User Interface.\n"
                      "•  Implemented location using google location service.\n"
                      "•  Implemented all functionalities using firebase.	",
                  duration: 'Feb 27, 2022 - May 19, 2022',
                  programmingLanguage: 'Kotlin',
                onClick: (){
                  customLaunchURL(context: context, url: salonBookingURI);
                },),
              WorkCards(
                  title: 'Main Moment',
                  description: "•  Designed the current User Interface.\n"
                      "•  Implemented time based group chat which automatically deletes after 24 hours using firebase Realtime Database.",
                  duration: 'October 2021 - December 2021',
                  programmingLanguage: 'Java',
                onClick: (){
                  customLaunchURL(context: context, url: mainMomentURI);
                },),
              WorkCards(
                  title: 'MyNote',
                  description: "•  Designed and modified the User Interface.",
                  duration: 'March 2021',
                  programmingLanguage: 'Java',
                onClick: (){
                  customLaunchURL(context: context, url: myNoteURI);
                },),
            ],
          ),
        ),
      ),
    );
  }
}
