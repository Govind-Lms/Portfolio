import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:govinddev/responsive.dart';
import 'package:govinddev/src/presentation/views/contact/components/contact_widget.dart';
import 'package:govinddev/src/presentation/widgets/social_icon.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../consts/colors.dart';
import '../../../consts/consts.dart';
import '../../../consts/style.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        height: 580.0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 70, height: 3, color: UIColor.blackColor),
                const SizedBox(
                  width: 20.0,
                ),
                Text('GET IN TOUCH'.toUpperCase(), style: UIStyle.titleStyle),
                const SizedBox(
                  width: 20.0,
                ),
                Container(width: 70, height: 3, color: UIColor.blackColor),
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 50.0, left: 50.0, right: 50.0),
                    child: Stack(
                      children: [
                        Container(
                          height: 420.0,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(30.0),
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 233, 229, 242),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Gap(10),
                              Text(
                                'Have an idea to create something?',
                                style: UIStyle.contactStyle,
                              ),
                              const Gap(10),
                              Expanded(
                                child: Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: TextFormField(
                                          controller: _nameController,
                                          decoration: const InputDecoration(
                                            fillColor: Colors.white,
                                            hintText: 'Your Name',
                                            // prefix: Icon(Icons.person,color: Colors.black,),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: TextFormField(
                                          controller: _emailController,
                                          decoration: const InputDecoration(
                                            hintText: 'Your Email',
                                            // prefix: Icon(Icons.email,color: Colors.black,),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        child: TextFormField(
                                          controller: _contentController,
                                          minLines: 3,
                                          maxLines: 3,
                                          decoration: const InputDecoration(
                                            hintText: 'Your Message',
                                            // prefix: Icon(Icons.message,color: Colors.black,),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      MaterialButton(
                                        color: UIColor.primaryColor,
                                        textColor: Colors.white,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 20),
                                        onPressed: sendEmail,
                                        // onPressed: _sendMail,
                                        child: const Text('Send'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 10.0,
                          top: 10,
                          child: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                                gradient: UIColor.contactGradient,
                                borderRadius: BorderRadius.circular(50.0)),
                            child: const Center(
                              child: Icon(
                                Icons.send,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .02,
                      right: MediaQuery.of(context).size.width * .02,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const ContactWidget(
                          Icons.mail,
                          'Mail Us:',
                          AppConstants.mail,
                        ),
                        
                        const ContactWidget(
                          Icons.call,
                          'Call Us:',
                          AppConstants.phone,
                        ),
                        
                        const ContactWidget(
                          Icons.pin_drop,
                          'Visit Us:',
                          AppConstants.location,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20.0),
                          child: const SocialIconBuilder(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      mobileScreen: SizedBox(
        height: 750.0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50, height: 3, color: UIColor.primaryColor),
                const SizedBox(
                  width: 5.0,
                ),
                Text('GET IN TOUCH',
                    style: UIStyle.titleStyle.copyWith(fontSize: 18.0)),
                const SizedBox(
                  width: 5.0,
                ),
                Container(width: 50, height: 3, color: UIColor.primaryColor),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 380.0,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(30.0),
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 233, 229, 242),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Gap(20),
                      Text(
                        'Have an idea to create something?',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: MobileUiStyle.contactMe,
                      ),
                      const Gap(10),
                      Expanded(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    fillColor: Colors.white,
                                    hintText: 'Your Name',
                                    // prefix: Icon(Icons.person,color: Colors.black,),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Your Email',
                                    // prefix: Icon(Icons.email,color: Colors.black,),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: TextFormField(
                                  // minLines: 3,
                                  maxLines: 3,
                                  decoration: const InputDecoration(
                                    hintText: 'Your Message',
                                    // prefix: Icon(Icons.message,color: Colors.black,),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              MaterialButton(
                                color: UIColor.primaryColor,
                                textColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                // onPressed: _sendMail,
                                onPressed: sendEmail,
                                child: const Text('Send'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 10.0,
                  top: 10,
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                        gradient: UIColor.contactGradient,
                        borderRadius: BorderRadius.circular(50.0)),
                    child: const Center(
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 20.0),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ContactWidget(
                    Icons.mail,
                    'Mail Us:',
                    AppConstants.mail,
                  ),
                  
                  ContactWidget(
                    Icons.call,
                    'Call Us:',
                    AppConstants.phone,
                  ),
                  
                  ContactWidget(
                    Icons.pin_drop,
                    'Visit Us:',
                    AppConstants.location,
                  ),
                ],
              ),
            ),
            const SocialIconBuilder(),
          ],
        ),
      ),
    );
  }


  void sendEmail() async {
    bool isValidForm = _formKey.currentState!.validate();
    if (!isValidForm) return;

    final mailto = Mailto(
      to: [AppConstants.mail],
      subject: _nameController.text.trim(),
      body: _contentController.text.trim(),
    ).toString();

    if (await canLaunch(mailto)) {
      await launch(mailto);
    } else {
      debugPrint("Cant launch $mailto");
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _contentController.dispose();
    super.dispose();
  }
}
