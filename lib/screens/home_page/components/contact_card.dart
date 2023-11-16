import 'package:flutter/material.dart';
import 'package:portfolio_app/constants/app_constants.dart';

class ContactCard extends StatelessWidget {
  final String iconImage;
  final Function() onClick;
  const ContactCard({super.key, required this.iconImage, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onClick,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              border: Border.all(width: 1, color: Colors.black)),
          padding: const EdgeInsets.all(3),
          child: Image.asset(iconImage,
            fit: BoxFit.contain
            ,
            height: 40,
            width: 40,
          ),
        ),
      ),
    );
  }
}
