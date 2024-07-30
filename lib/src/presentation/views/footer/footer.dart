import 'package:flutter/material.dart';
import 'package:govinddev/src/consts/colors.dart';
import 'package:govinddev/src/core/models/app_model.dart';
import 'package:govinddev/src/presentation/widgets/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../consts/consts.dart';
import '../../../../responsive.dart';

class Footer extends StatelessWidget {
 
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Get in touch
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: UIColor.primaryColor,
                          ),
                          const SizedBox(width: 7.5),
                          const Text(
                            'GET IN TOUCH',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        getInTouch,
                        style: const TextStyle(
                          color: UIColor.secondaryColor1,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Email Address',
                        style: TextStyle(
                          color: UIColor.secondaryColor1,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      const Text(
                        AppConstants.mail,
                        style: TextStyle(
                          color: UIColor.secondaryColor1,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          color: UIColor.secondaryColor1,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      const Text(
                        AppConstants.phone,
                        style: TextStyle(
                          color: UIColor.secondaryColor1,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Location',
                        style: TextStyle(
                          color: UIColor.secondaryColor1,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      const SizedBox(height: 7),
                      const Text(
                        AppConstants.location,
                        style: TextStyle(
                          color: UIColor.secondaryColor1,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // Aout me
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: UIColor.primaryColor,
                          ),
                          const SizedBox(width: 7.5),
                          const Text(
                            'ABOUT ME',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        description,
                        style: const TextStyle(
                          color: UIColor.secondaryColor1,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                // My projects
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 2,
                            height: 20,
                            color: UIColor.primaryColor,
                          ),
                          const SizedBox(width: 7.5),
                          const Text(
                            'RECENT PROJECTS',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: appLists
                            .take(4)
                            .map((projects) => _buildProject(context, projects))
                            .toList(),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: UIColor.secondaryColor1.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Proudly powered by GovindDev ©${DateTime.now().year}',
                  style: TextStyle(
                    color: UIColor.secondaryColor1.withOpacity(.75),
                  ),
                ),
                const SocialIconBuilder(),
              ],
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 30,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: UIColor.primaryColor,
                    ),
                    const SizedBox(width: 7.5),
                    const Text(
                      'GET IN TOUCH',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  getInTouch,
                  style: const TextStyle(
                    color: UIColor.secondaryColor1,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Email Address',
                  style: TextStyle(
                    color: UIColor.secondaryColor1,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  'govinddev010@gmail.com',
                  style: TextStyle(
                    color: UIColor.secondaryColor1,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Phone Number',
                  style: TextStyle(
                    color: UIColor.secondaryColor1,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  AppConstants.phone,
                  style: TextStyle(
                    color: UIColor.whiteColor,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Location',
                  style: TextStyle(
                    color: UIColor.whiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                const Text(
                  AppConstants.location,
                  style: TextStyle(
                    color: UIColor.whiteColor,
                    fontSize: 13,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            // Aout me
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: UIColor.primaryColor,
                    ),
                    const SizedBox(width: 7.5),
                    const Text(
                      'ABOUT ME',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  description,
                  style: const TextStyle(
                    color: UIColor.whiteColor,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            // My projects
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 2,
                      height: 20,
                      color: UIColor.primaryColor,
                    ),
                    const SizedBox(width: 7.5),
                    const Text(
                      'RECENT PROJECTS',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: appLists
                      .take(4)
                      .map((p) => _buildProject(context, p))
                      .toList(),
                )
              ],
            ),
            const SizedBox(height: 30),
            Divider(
              color: UIColor.whiteColor.withOpacity(.75),
              thickness: .5,
            ),
            const SizedBox(height: 20),
            const FittedBox(
              child: SocialIconBuilder(),
            ),
            const SizedBox(height: 20),
            Text(
              'Proudly powered by GovindDev ©${DateTime.now().year}',
              style: const TextStyle(
                color: UIColor.whiteColor,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProject(BuildContext context, AppModel project) => InkWell(
    onTap: () {
      launch(project.url);
    },
    child: ResponsiveWidget(
      desktopScreen: Container(
        // color: UIColor.secondaryColor1,
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * .1,
        // height: MediaQuery.of(context).size.width * .1,
        child: Image.asset(project.image,fit: BoxFit.fitHeight,),
      ),
      mobileScreen: Container(
        // color: UIColor.secondaryColor1,
        padding: const EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width * .2,
        // height: MediaQuery.of(context).size.width * .2,
        child: Image.asset(project.image,fit: BoxFit.fitHeight,),
      ),
    ),
  );
}
//   List<Widget> _socialMedia() => [
//         SocialIconBuilder(
//           icon: 'assets/icons/github.png',
//           margin: 10,
//           onTap: () => launch(AppConstants.github),
//         ),
//         SocialIconBuilder(
//           icon: 'assets/icons/linkedin.png',
//           margin: 10,
//           onTap: () => launch(AppConstants.linkedin),
//         ),
//         SocialIconBuilder(
//           icon: 'assets/icons/twitter.png',
//           margin: 10,
//           onTap: () => launch(AppConstants.twitter),
//         ),
//         SocialIconBuilder(
//           icon: 'assets/icons/facebook.png',
//           margin: 10,
//           onTap: () => launch(AppConstants.facebook),
//         ),
//       ];
// }
