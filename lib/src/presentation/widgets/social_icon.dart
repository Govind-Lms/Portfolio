import 'package:flutter/material.dart';
import 'package:govinddev/responsive.dart';
import 'package:govinddev/src/consts/consts.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIconBuilder extends StatelessWidget {
  const SocialIconBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
        desktopScreen: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(
              icon: 'assets/icons/github.png',
              margin: 10,
              onTap: () => launch(AppConstants.github),
            ),
            SocialIcon(
              icon: 'assets/icons/linkedin.png',
              margin: 10,
              onTap: () => launch(AppConstants.linkedin),
            ),
            SocialIcon(
              icon: 'assets/icons/twitter.png',
              margin: 10,
              onTap: () => launch(AppConstants.twitter),
            ),
            SocialIcon(
              icon: 'assets/icons/facebook.png',
              margin: 10,
              onTap: () => launch(AppConstants.facebook),
            ),
          ],
        ),
        mobileScreen: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(
              icon: 'assets/icons/github.png',
              margin: 5,
              onTap: () => launch(AppConstants.github),
            ),
            SocialIcon(
              icon: 'assets/icons/linkedin.png',
              margin: 5,
              onTap: () => launch(AppConstants.linkedin),
            ),
            SocialIcon(
              icon: 'assets/icons/twitter.png',
              margin: 5,
              onTap: () => launch(AppConstants.twitter),
            ),
            SocialIcon(
              icon: 'assets/icons/facebook.png',
              margin: 5,
              onTap: () => launch(AppConstants.facebook),
            ),
          ],
        ));
  }
}

class SocialIcon extends StatelessWidget {
  final String icon;
  final double margin;
  final VoidCallback onTap;
  const SocialIcon(
      {Key? key, required this.icon, required this.margin, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(margin),
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 6.0,
              offset: Offset(3, 3),
            )
          ],
        ),
        child: Center(
          child: Image(
            image: AssetImage(icon),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
