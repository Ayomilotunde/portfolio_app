import 'package:url_launcher/url_launcher.dart';

import '../../../constants/app_constants.dart';
import '../../../utils/snackbar.dart';

void customLaunchURL({required context, required Uri url}) async {
  await canLaunchUrl(url)
      ? await launchUrl(url)
      : openSnackBar(context, 'Could not launch $url', kPrimaryColour);
}