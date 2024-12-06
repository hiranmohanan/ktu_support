part of 'models.dart';

class HomeModel {
  final List<HomeCarouselIteams> iteams;
  final List<ServiceModel> services;

  HomeModel({
    required this.iteams,
    required this.services,
  });
}

class HomeCarouselIteams {
  final String title;
  final String url;
  final String path;

  HomeCarouselIteams({
    required this.title,
    required this.url,
    required this.path,
  });
}

HomeModel demoModel = HomeModel(iteams: [
  HomeCarouselIteams(
    title: 'KTU Note\'s',
    url:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmWE4o8UVZbcFdwPRxfP67Ef2fg8ps1tLFfzIxAvH_PX0deKJgR8thAKRlizc8O474-MtBv5S6VZZTJ-YoM7T-oPIqbVaNVsCzKuRttZLtZCMwc9hw4B1zwsepfBf-Wit7C4ADmwsF02fs/s640-rw/Ktu-Online-Class-on-ASAP-ktustudents.in.png',
    path: '/notes',
  ),
  HomeCarouselIteams(
    title: 'KTU Online Class',
    url:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmWE4o8UVZbcFdwPRxfP67Ef2fg8ps1tLFfzIxAvH_PX0deKJgR8thAKRlizc8O474-MtBv5S6VZZTJ-YoM7T-oPIqbVaNVsCzKuRttZLtZCMwc9hw4B1zwsepfBf-Wit7C4ADmwsF02fs/s640-rw/Ktu-Online-Class-on-ASAP-ktustudents.in.png',
    path: '/online-class',
  ),
  HomeCarouselIteams(
    title: 'Internship',
    url:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhmWE4o8UVZbcFdwPRxfP67Ef2fg8ps1tLFfzIxAvH_PX0deKJgR8thAKRlizc8O474-MtBv5S6VZZTJ-YoM7T-oPIqbVaNVsCzKuRttZLtZCMwc9hw4B1zwsepfBf-Wit7C4ADmwsF02fs/s640-rw/Ktu-Online-Class-on-ASAP-ktustudents.in.png',
    path: '/internship',
  ),
], services: services);
