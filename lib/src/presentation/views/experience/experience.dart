import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:govinddev/src/consts/colors.dart';
import 'package:govinddev/src/consts/style.dart';

import '../../../../responsive.dart';

class Experience extends StatelessWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobileScreen: Center(
        child: SizedBox(
          height: 1250.0,
          child: Scaffold(
            body: Column(
              children: [
                ///Experience
                Container(
                  height: 300.0,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/pngs/cover.jpg',
                        ),
                        colorFilter: ColorFilter.mode(Colors.blueGrey, BlendMode.overlay),

                        fit: BoxFit.cover,
                      )),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildStatistic(context, 'assets/pngs/experience.png',
                            '3+', 'Years of Experience'),
                        _buildStatistic(context, 'assets/pngs/projects.png',
                            '10+', 'Projects Done'),
                        _buildStatistic(context, 'assets/pngs/coffee.png', '∞',
                            'Coffee Cups'),
                      ]),
                ),
                
                
                Column(
                  children: [
                    ///working process
                    Container(
                margin: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 70, height: 3, color: UIColor.blackColor),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Text('WORKING\nPROCESS',
                    textAlign: TextAlign.center,
                        style: UIStyle.titleStyle.copyWith(fontSize: 18.0)),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Container(width: 70, height: 3, color: UIColor.blackColor),
                  ],
                ),
              ),
                    const SizedBox(height: 20.0,),
                    
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ProcessCard(
                          color: UIColor.secondaryColor1,
                          desc:
                              'To maintain the screens and get more info in one place',
                          image: 'assets/pngs/plan_logo.png',
                          no: '01.',
                          text: 'Plan',
                        ),
                        ProcessCard(
                          color: UIColor.secondaryColor2,
                          desc:
                              'To maintain creative look and unique visuals of the screen',
                          image: 'assets/pngs/design.png',
                          no: '02.',
                          text: 'Design',
                        ),
                        ProcessCard(
                          color: UIColor.secondaryColor3,
                          desc:
                              'Developing the represented UI with great and new tools',
                          image: 'assets/pngs/code.png',
                          no: '03.',
                          text: 'Develop',
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      desktopScreen: Center(
        child: SizedBox(
          height: 750.0,
          child: Scaffold(
            body: Column(
              children: [
                Container(
                  height: 300.0,
                  decoration: const BoxDecoration(
                      color: Colors.black26,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/pngs/cover.jpg',
                        ),
                        colorFilter: ColorFilter.mode(Colors.black, BlendMode.overlay),
                        fit: BoxFit.cover,
                      )),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .15,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStatistic(context, 'assets/pngs/experience.png',
                            '3+', 'Years of Experience'),
                        _buildStatistic(context, 'assets/pngs/projects.png',
                            '10+', 'Projects Done'),
                        _buildStatistic(context, 'assets/pngs/coffee.png', '∞',
                            'Coffee Cups'),
                      ]),
                ),
                SizedBox(
                  height: 450.0,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 70, height: 3, color: UIColor.blackColor),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Text('Working Process'.toUpperCase(),
                                style: UIStyle.titleStyle),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Container(
                                width: 70, height: 3, color: UIColor.blackColor),
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ProcessCard(
                            color: UIColor.secondaryColor1,
                            desc:
                                'To maintain the screens and get more info in one place',
                            image: 'assets/pngs/plan_logo.png',
                            no: '01.',
                            text: 'Plan',
                          ),
                          ProcessCard(
                            color: UIColor.secondaryColor2,
                            desc:
                                'To maintain creative look and unique visuals of the screen',
                            image: 'assets/pngs/design.png',
                            no: '02.',
                            text: 'Design',
                          ),
                          ProcessCard(
                            color: UIColor.secondaryColor3,
                            desc:
                                'Developing the represented UI with great and new tools',
                            image: 'assets/pngs/code.png',
                            no: '03.',
                            text: 'Develop',
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatistic(
      BuildContext context, String icon, String total, String description) {
    return ResponsiveWidget(
      desktopScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Image.asset(icon, height: 50.0, width: 50.0),
          ),
          const SizedBox(height: 5),
          Text(total,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w800,
              )),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      mobileScreen: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(icon, height: 24.0, width: 24.0,fit: BoxFit.scaleDown,),
          const SizedBox(height: 10),
          Text(total,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w800,
              )),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class ProcessCard extends StatelessWidget {
  final Color color;
  final String text;
  final String image;
  final String no;
  final String desc;
  const ProcessCard(
      {Key? key, required this.color,
      required this.text,
      required this.image,
      required this.no,
      required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobileScreen: Container(
        margin: const EdgeInsets.all(10.0),
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color,
            boxShadow: const [
              BoxShadow(
                // color: Colors.blueAccent.withOpacity(.2),
                color: Colors.black26,
                offset: Offset(3, 3),
                blurRadius: 6.0,
              )
            ]),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              alignment: Alignment.topRight,
              child: Text(
                no,
                style: UIStyle.regularStyle.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(text,
                    style: UIStyle.regularStyle
                        .copyWith(fontWeight: FontWeight.w700)),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(desc, style: UIStyle.processStyle),
            )
          ],
        ),
      ),
      desktopScreen: Container(
        margin: const EdgeInsets.all(20.0),
        width: 250,
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: color,
            boxShadow: const [
              BoxShadow(
                // color: Colors.blueAccent.withOpacity(.2),
                color: Colors.black26,
                offset: Offset(3, 3),
                blurRadius: 6.0,
              )
            ]),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0, right: 10.0),
              alignment: Alignment.topRight,
              child: Text(
                no,
                style: UIStyle.regularStyle.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Text(text,
                    style: UIStyle.regularStyle
                        .copyWith(fontWeight: FontWeight.w700)),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child: Text(desc, style: UIStyle.processStyle),
            )
          ],
        ),
      ),
    );
  }
}
