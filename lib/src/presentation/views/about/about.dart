import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govinddev/src/consts/colors.dart';
import 'package:govinddev/src/consts/consts.dart';
import 'package:govinddev/src/consts/style.dart';
import 'package:govinddev/responsive.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Column(
        children: [
          const Gap(50),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.only(left: 80.0, right: 80.0),
                width: MediaQuery.of(context).size.width / 2 * .4,
                height: MediaQuery.of(context).size.width / 2 * .4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: UIColor.blackColor,
                ),
                child: const Image(
                  image: AssetImage('assets/pngs/logo.png'),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: Text('ABOUT ME', style: UIStyle.titleStyle),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(bottom: 20.0, right: 50.0),
                      child: Text(
                        description,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        MaterialButton(
                          // onPressed: ()=>hireMe('${AppConstants.mail}','Hiring You', 'Hi there...,\n'),
      
                          color: UIColor.primaryColor,
                          textColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          onPressed: () {
                            launch(AppConstants.cv);
                          },
                          child: Text(
                            'VIEW RESUME',
                            style: UIStyle.buttonStyle,
                          ),
                        ),
                        const SizedBox(width: 20),
                        MaterialButton(
                          // onPressed: _downloadCV,
                          color: UIColor.blackColor,
                          textColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          onPressed: () async {
                            
      
                            final mailto = Mailto(
                              to: [AppConstants.mail],
                              subject: '',
                              body: '',
                            ).toString();
      
                            if (await canLaunch(mailto)) {
                              await launch(mailto);
                            } else {
                              debugPrint("Cant launch $mailto");
                            }
                          },
                          child: Text(
                            'GET IN TOUCH',
                            style: UIStyle.buttonStyle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 70, height: 3, color: UIColor.blackColor),
                const SizedBox(
                  width: 20.0,
                ),
                Text('MY SKILLS', style: UIStyle.titleStyle),
                const SizedBox(
                  width: 20.0,
                ),
                Container(width: 70, height: 3, color: UIColor.blackColor),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildskillMobile('Flutter', 'assets/icons/Flutter.png'),
              _buildskillMobile('Firebase', 'assets/icons/Firebase.png'),
              _buildskillMobile('Adobe XD', 'assets/icons/adobexd.png'),
              _buildskillMobile('API', 'assets/icons/api.png')
            ],
          ),
        ],
      ),
      mobileScreen: Column(
        children: [
          const Gap(20),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width / 2 * .5,
                height: MediaQuery.of(context).size.width / 2 * .5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: UIColor.blackColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage('assets/pngs/logo.png'),
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: Text('ABOUT ME',
                          style:
                              UIStyle.titleStyle.copyWith(fontSize: 18.0)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 30.0,
                        bottom: 10.0,
                      ),
                      child: Text(
                        description,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        MaterialButton(
                          color: UIColor.primaryColor,
                          textColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 14),
                          // ignore: deprecated_member_use
                          onPressed: () => launch(AppConstants.cv),
            
                          child: Text(
                            'VIEW RESUME',
                            style: UIStyle.buttonStyle
                                .copyWith(fontSize: 14.0),
                          ),
                        ),
                        const SizedBox(height: 10),
                        MaterialButton(
                          // ignore: deprecated_member_use
                          onPressed: () async {
                          
            
                          final mailto = Mailto(
                            to: [AppConstants.mail],
                            subject: '',
                            body: '',
                          ).toString();
            
                          if (await canLaunch(mailto)) {
                            await launch(mailto);
                          } else {
                            debugPrint("Cant launch $mailto");
                          }
                        },
                          color: UIColor.blackColor,
                          textColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 14),
                          child: Text(
                            'GET IN TOUCH',
                            style: UIStyle.buttonStyle
                                .copyWith(fontSize: 14.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 70, height: 3, color: UIColor.blackColor),
                const SizedBox(
                  width: 20.0,
                ),
                Text('MY SKILLS',
                    style: UIStyle.titleStyle.copyWith(fontSize: 18.0)),
                const SizedBox(
                  width: 20.0,
                ),
                Container(width: 70, height: 3, color: UIColor.blackColor),
              ],
            ),
          ),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildskillMobile('Flutter', 'assets/icons/Flutter.png'),
                _buildskillMobile('Firebase', 'assets/icons/Firebase.png'),
                _buildskillMobile('Adobe XD', 'assets/icons/adobexd.png'),
                _buildskillMobile('API', 'assets/icons/api.png')
              ],
            ),
          ),
          // Row(
            
          //   children: List<Widget>.generate(
          //     9,
          //     (index) =>  const ClipOval(
          //       clipBehavior: Clip.hardEdge,
          //       child: Text('Flutter'),
            
          //     )
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildskill(
    String name,
  ) {
    return Container(
      margin: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              border: Border.all(width: 2.0, color: Colors.black),
            ),
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
    );
  }
}

Widget _buildskillMobile(String name, String image) {
  return ResponsiveWidget(
    desktopScreen: Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            width: 120.0,
            height: 120.0,
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 2.0, color: Colors.black),
            ),
            child: Image(
              image: AssetImage(image),
            ),
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
    ),
    mobileScreen: Container(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            width: 70.0,
            height: 70.0,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 2.0, color: Colors.black),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(1000.0),
              child: Image(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Text(
            name,
            style: GoogleFonts.poppins(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
    ),
  );
}
