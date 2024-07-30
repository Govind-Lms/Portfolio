import 'dart:async';
import 'package:flutter/material.dart';
import 'package:govinddev/src/consts/colors.dart';
import 'package:govinddev/src/consts/style.dart';
import 'package:govinddev/src/presentation/views/contact/contact_us.dart';
import 'package:govinddev/src/presentation/views/header/header.dart';
import 'package:govinddev/src/presentation/views/home/components/drawer_tile.dart';
import 'package:govinddev/src/presentation/views/home/components/material_button.dart';
import 'package:govinddev/src/presentation/views/project/app_project.dart';
import 'package:govinddev/src/presentation/widgets/social_icon.dart';
import '../../../../responsive.dart';
import '../about/about.dart';
import '../experience/experience.dart';
import '../footer/footer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _headerGlobalKey = GlobalKey();
  final _aboutGlobaleKey = GlobalKey();
  final _experienceGlobalKey = GlobalKey();
  final _projectsGlobalKey = GlobalKey();
  final _contactUsGlobaleKey = GlobalKey();
  final _appBarGlobalKey = GlobalKey();

  final _scrollController = ScrollController();
  final _fabStream = StreamController<bool>();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      _fabStream.sink.add(_scrollController.offset > 500);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Scaffold(
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              key: _appBarGlobalKey,
              floating: true,
              pinned: false,
              snap: true,
              titleSpacing: 0,
              elevation: 0.0,
              toolbarHeight: 60,
              backgroundColor: Colors.white,
              title: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .05,
                ),
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(50.0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/pngs/logo.png',
                      color: Colors.black,
                      fit: BoxFit.fitWidth,
                      // color: Colors.black,
                    ),
                  ),
                ),
              ),
              actions: [
                Row(
                  children: [
                    ///home
                    MaterailButtonWidget(onTap: _scrollToHeader, name: 'Home'),
                    MaterailButtonWidget(onTap: _scrollToAbout, name: 'About Me'),
                    MaterailButtonWidget(onTap: _scrollToExperience, name: 'Experience'),
                    MaterailButtonWidget(onTap: _scrollToProjects, name: 'Projects'),
                    MaterailButtonWidget(onTap: _scrollToContact, name: 'Contact Me'),
                    
                    const SizedBox(width: 20),
                    MaterialButton(
                      onPressed: _scrollToContact,
                      color: UIColor.primaryColor,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 15,
                      ),
                      child: Text(
                        'Hire Me'.toUpperCase(),
                        style: UIStyle.appBarStyle.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .05),
              ],
            ),
            ..._slivers(),
          ],
        ),
        floatingActionButton: _buildFab(),
      ),
      
      mobileScreen: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  // padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Image.asset(
                      'assets/pngs/ProfilePic.png',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
                const Divider(),
                DrawerTile(onTap: _scrollToHeader, name: 'Home'),
                DrawerTile(onTap: _scrollToAbout, name: 'About Me'),
                DrawerTile(onTap: _scrollToExperience, name: 'Experience'),
                DrawerTile(onTap: _scrollToProjects, name: 'Projects'),
                DrawerTile(onTap: _scrollToContact, name: 'Contact Me'),
                const Divider(),
                const SizedBox(height: 20),
                const SocialIconBuilder(),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              // key: _headerGlobalKey,
              floating: true,
              titleSpacing: 0,
              elevation: 0.0,
              toolbarHeight: 60,
              // backgroundColor: Colors.white,
              centerTitle: true,
              backgroundColor: Colors.transparent,
              actions: [Padding(
                padding: const EdgeInsets.only(
                  right: 20
                ),
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(50.0),
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      'assets/pngs/logo.png',
                      color: Colors.black,
                      fit: BoxFit.fitWidth,
                      // color: Colors.black,
                    ),
                  ),
                ),
              ),],
              leading: Align(
                child: Builder(
                  builder: (ctx) => InkWell(
                    onTap: () {
                      Scaffold.of(ctx).openDrawer();
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: const Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ..._slivers(),
          ],
        ),
        floatingActionButton: _buildFab(),
      ),
    );
  }

  List<Widget> _slivers() => [
        SliverToBoxAdapter(
          key: _headerGlobalKey,
          child: const Header(),
        ),
        SliverToBoxAdapter(
          key: _aboutGlobaleKey,
          child: const About(),
        ),
        SliverToBoxAdapter(
          key: _experienceGlobalKey,
          child: const Experience(),
        ),
        SliverToBoxAdapter(
          key: _projectsGlobalKey,
          child: const AppProjects(),
        ),
        SliverToBoxAdapter(
          key: _contactUsGlobaleKey,
          child: const ContactUs(),
        ),
        const SliverToBoxAdapter(
          child: Footer(),
        ),
      ];

  Widget _buildFab() {
    return StreamBuilder<bool>(
      stream: _fabStream.stream,
      builder: (_, data) {
        final bool showFab = data.hasData && data.data!;
        return AnimatedOpacity(
          opacity: showFab ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: showFab
                ? _scrollToHeader
                : null, // make sure user cannot click when button hidden
            mini: true,
            child: const RotatedBox(
                quarterTurns: 1,
                child: Center(child: Icon(Icons.arrow_back_ios))),
          ),
        );
      },
    );
  }

  void _scrollToHeader() {
    Scrollable.ensureVisible(
      _headerGlobalKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToAbout() {
    Scrollable.ensureVisible(
      _aboutGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToExperience() {
    Scrollable.ensureVisible(
      _experienceGlobalKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToProjects() {
    Scrollable.ensureVisible(
      _projectsGlobalKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  void _scrollToContact() {
    Scrollable.ensureVisible(
      _contactUsGlobaleKey.currentContext!,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _fabStream.close();
    super.dispose();
  }
}
