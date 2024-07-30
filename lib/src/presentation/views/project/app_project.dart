import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';
import 'package:govinddev/src/consts/colors.dart';
import 'package:govinddev/src/consts/style.dart';
import 'package:govinddev/src/core/models/app_model.dart';
import 'package:govinddev/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class AppProjects extends StatefulWidget {
  const AppProjects({Key? key}) : super(key: key);

  @override
  State<AppProjects> createState() => _AppProjectsState();
}

class _AppProjectsState extends State<AppProjects> {
  var currentIndex = 0;
  Gallery3DController gallery3dController = Gallery3DController(itemCount: appLists.length);
  
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50, height: 3, color: UIColor.primaryColor),
                const SizedBox(
                  width: 5.0,
                ),
                Text('PROJECTS',style: UIStyle.titleStyle),
                const SizedBox(
                  width: 5.0,
                ),
                Container(width: 50, height: 3, color: UIColor.primaryColor),
              ],
            ),
          const SizedBox(height: 20,),
          Container(
            // margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Center(
              child: Gallery3D(
                controller: gallery3dController,
                width: MediaQuery.sizeOf(context).width,
                height: 400,
                isClip: true,
                onItemChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemConfig: GalleryItemConfig(
                  width: MediaQuery.of(context).size.width /1.8,
                  height: MediaQuery.of(context).size.height / 2,
                  radius: 10,
                  isShowTransformMask: false,
                ),
                onClickItem: (index) {
                  launch(appLists[index].url);
                },
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[index == 0 ? 500 : index * 100],
                      boxShadow: const[
                        BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 6,
                          color: Colors.black12
                        )
                      ]
                    ),
                    
                    child: Image.asset(appLists[index].image,fit: BoxFit.cover,),
                  );
                },
              ),
            ),
          ),
          DotsIndicator(
            dotsCount: appLists.length,
            position: currentIndex,
            decorator: DotsDecorator(
              activeColor: Colors.black,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          Container(height: 20,),
        ],
      ),
      mobileScreen: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(width: 50, height: 3, color: UIColor.primaryColor),
                const SizedBox(
                  width: 5.0,
                ),
                Text('PROJECTS',
                    style: UIStyle.titleStyle.copyWith(fontSize: 18.0)),
                const SizedBox(
                  width: 5.0,
                ),
                Container(width: 50, height: 3, color: UIColor.primaryColor),
              ],
            ),
          Container(
            margin: const EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Center(
              child: Gallery3D(
                controller: Gallery3DController(itemCount: appLists.length),
                width: MediaQuery.sizeOf(context).width,
                height: 400,
                isClip: true,
                onItemChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemConfig: GalleryItemConfig(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  radius: 10,
                  isShowTransformMask: false,
                ),
                onClickItem: (index) {
                  // 
                  launch(appLists[index].url);
                },
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      decoration: const BoxDecoration(
                      
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 6,
                          color: Colors.black12
                        )
                      ]
                    ),
                    
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(appLists[index].image,fit: BoxFit.cover,)),
                    ),
                  );
                },
              ),
            ),
          ),
          DotsIndicator(
            dotsCount: appLists.length,
            position: currentIndex,
            decorator: DotsDecorator(
              activeColor: Colors.black,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
          ),
          Container(height: 20,),
        ],
      ),
    );
  }
}
