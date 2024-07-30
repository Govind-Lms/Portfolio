class AppModel {
  final String image;
  final String title;
  final DateTime date;
  final String overallTitle;
  final String descTitle;
  final String logo;
  final String author;
  final String url;

  AppModel( 
      {required this.logo,
      required this.url,
      required this.image,
      required this.title,
      required this.date,
      required this.overallTitle,
      required this.descTitle,
      required this.author});
}

List<AppModel> appLists =[
    AppModel(
      author: 'GovindDev',
      url : "https://github.com/Govind-Lms/Movie_Intern",
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'MOVIE'.toUpperCase(),
      image: 'assets/movie.png',
      overallTitle: 'Movie App',
      title: 'MOVIE',
    ),
    AppModel(
      url : "https://github.com/Govind-Lms/shop_init_user",
      author: 'GovindDev',
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'ShopInit',
      image: 'assets/shopinit.png',
      overallTitle: 'E Commerce App',
      title: 'SHOPINIT',
    ),
    AppModel(
      url : "https://github.com/Govind-Lms/Dictionary_Intern",
      author: 'GovindDev',
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'Dictionary',
      image: 'assets/dictionary.png',
      overallTitle: 'Dictionary App',
      title: 'DICTIONARY',
    ),
    AppModel(
      url : "https://github.com/Govind-Lms/Weather-Intern",
      author: 'GovindDev',
      logo: 'assets/pngs/ProfilePic.png',
      date: DateTime.now(),
      descTitle: 'WeatherApp'.toUpperCase(),
      image: 'assets/weather.png',
      overallTitle: 'Weather App',
      title: 'WEATHER',
    ),


  ];
