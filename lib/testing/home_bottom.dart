import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 30.0,
              color: Colors.black.withOpacity(.15),
              offset: Offset(0,10),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.024),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                setState(() {
                  currentIndex = index;
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      bottom: index == currentIndex ? 0 : MediaQuery.of(context).size.width * .029,
                      right: MediaQuery.of(context).size.width * .0422,
                      left: MediaQuery.of(context).size.width * .0422,
                    ),
                    width: MediaQuery.of(context).size.width * .128,
                    height: index == currentIndex ? MediaQuery.of(context).size.width * .014 : 0,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      // borderRadius: BorderRadius.circular(10),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                  Icon(
                    items[index],
                    size: MediaQuery.of(context).size.width * .076,
                    color: index == currentIndex ? Colors.white : Colors.black38,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        color: index == currentIndex ? Colors.blueAccent : Colors.transparent,
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * .03,),
                ],
              ),
            );
          },
        )
      ),
    );
  }
  List<IconData> items = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.list_rounded,
    Icons.person_rounded,
  ];
}