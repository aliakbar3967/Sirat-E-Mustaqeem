import '../../../../routes/routes.dart';
import '../../../core/util/constants.dart';
import '../../../core/util/controller/share_controller.dart';
import '../../../core/util/controller/url_launcher_controller.dart';

class GeneralOption {
  final String imagePath;
  final String? routeName;
  final Function()? onTap;
  final String title;
  final String subtitle;

  GeneralOption({
    required this.imagePath,
    required this.onTap,
    required this.title,
    required this.subtitle,
    this.routeName,
  });
}

final List<GeneralOption> generalOptions = [
 
  GeneralOption(
    imagePath: 'assets/images/setting_icon/svg/star.svg',
    onTap: () async {
      await launchURL(PLAY_STORE_URL);
    },
    title: 'Rate on App Store',
    subtitle: 'Enjoy using \'Masjid Mode\'? '
        'Please leave a review to help other Muslims.',
  ),
  GeneralOption(
    imagePath: 'assets/images/setting_icon/svg/share.svg',
    onTap: () async {
      await onShare('Hey! Checkout this app '
          'https://play.google.com/store/apps/details?id=com.qubilix.masjidmode');
    },
    title: 'Share with a friend',
    subtitle: 'Tell others about the app with a link.',
  ),

];
