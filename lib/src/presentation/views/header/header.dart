import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:govinddev/src/consts/colors.dart';
import 'package:govinddev/src/consts/style.dart';
import 'package:govinddev/responsive.dart';
import 'package:govinddev/src/presentation/widgets/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../consts/consts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Stack(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            width: MediaQuery.of(context).size.width,
            height: 700.0,
            child: const Image(
              image: AssetImage('assets/pngs/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 80.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HELLO!',
                      style: UIStyle.helloStyle,
                    ),
                    Text(
                      'I AM SOFTWARE DEVELOPER',
                      style: UIStyle.iamStyle,
                    ),
                    Text(
                      '"KAN MYINT HTUN',
                      style: UIStyle.nameStyle,
                    ),
                    const Gap(20),
                    MaterialButton(
                      onPressed: () {
                        launch(AppConstants.cv);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 50.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: UIColor.primaryColor),
                        child: Center(
                            child: Text(
                          'DOWNLOAD CV',
                          style: UIStyle.buttonStyle,
                        )),
                      ),
                    ),
                    const Gap(20),
                    const SocialIconBuilder(),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.12),
                child: Image(
                  width: MediaQuery.of(context).size.width * .30,
                  image: const AssetImage('assets/pngs/ProfilePic.png'),
                ),
              )
            ],
          ),
        ],
      ),
      mobileScreen: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            child: const Image(
              image: AssetImage('assets/pngs/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                margin:  EdgeInsets.only(left : MediaQuery.sizeOf(context).width * .04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // const Gap(10),
                    Text(
                      'HELLO!',
                      style: MobileUiStyle.helloStyle,
                    ),
                    Text(
                      'I AM SOFTWARE DEVELOPER!!',
                      style: MobileUiStyle.iamStyle,
                    ),
                    Text(
                      '"KAN MYINT HTUN',
                      style: MobileUiStyle.nameStyle,
                    ),
                    const Gap(20),
                    MaterialButton(
                      onPressed: () {
                        launch(AppConstants.cv);
                      },
                      child: Container(
                        width: 120,
                        height: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: UIColor.primaryColor),
                        child: Center(
                            child: Text(
                          'DOWNLOAD CV',
                          style: MobileUiStyle.buttonStyle,
                        )),
                      ),
                    ),
                        
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.12),
                child: Image(
                  width: MediaQuery.of(context).size.width * 0.30,
                  image: const AssetImage('assets/pngs/ProfilePic.png'),
                ),
              ),
            ],
          ),
          // Align(
          //     child: Builder(
          //       builder: (ctx) => InkWell(
          //         onTap: () {
          //           Scaffold.of(ctx).openDrawer();
          //         },
          //         child: ClipRRect(
          //           borderRadius: BorderRadius.circular(1000),
          //           child: const Icon(Icons.menu,color: Colors.black,),
          //         ),
          //       ),
          //     ),
          //   ),
          const Gap(20),
          Positioned(
            bottom: MediaQuery.sizeOf(context).width * .05,
            child: const SocialIconBuilder()),
        ],
      ),
    );
  }
}
