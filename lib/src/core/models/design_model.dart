class DesignModel {
  final String image;
  final String title;
  final DateTime date;
  final String overallTitle;
  final String descTitle;
  final String logo;
  final String author;

  DesignModel(
      {required this.logo,
      required this.image,
      required this.title,
      required this.date,
      required this.overallTitle,
      required this.descTitle,
      required this.author});
}



abstract class Constant {
  static List<DesignModel> designLists =[
    DesignModel(
      author: 'GovindDev',
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'Invoice App'.toUpperCase(),
      image: 'assets/pngs/cover.png',
      overallTitle: 'SMP-RECKON',
      title: 'SMP-Process',
    ),
    DesignModel(
      author: 'GovindDev',
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'SLEEPY TALK',
      image: 'assets/pngs/cover.png',
      overallTitle: 'SLEEPY_TALK',
      title: 'Chat-APP',
    ),
    DesignModel(
      author: 'GovindDev',
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'E-WALLET',
      image: 'assets/pngs/cover.png',
      overallTitle: 'SLEEPY_TALK',
      title: 'Chat-APP',
    ),
    DesignModel(
      author: 'GovindDev',
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'Invoice App'.toUpperCase(),
      image: 'assets/pngs/cover.png',
      overallTitle: 'SMP-RECKON',
      title: 'SMP-Process',
    ),


  ];
}