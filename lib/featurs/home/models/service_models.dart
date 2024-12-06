part of 'models.dart';

class ServiceModel {
  final String title;
  final String path;
  final FaIcon icon;

  ServiceModel({
    required this.title,
    required this.path,
    required this.icon,
  });
}

List<ServiceModel> services = [
  ServiceModel(
    title: 'KTU Note\'s',
    path: '/notes',
    icon: kcBook,
  ),
  ServiceModel(
    title: 'KTU Online Class',
    path: '/online-class',
    icon: kcBookOpen,
  ),
  ServiceModel(
    title: 'Internship',
    path: '/internship',
    icon: kcBriefcase,
  ),
  ServiceModel(
    title: 'Workshop',
    path: '/workshop',
    icon: kcTools,
  ),
  ServiceModel(
    title: 'Mini Project',
    path: '/mini-project',
    icon: kcProjectDiagram,
  ),
  ServiceModel(
    title: 'Major Project',
    path: '/major-project',
    icon: kcProject,
  ),
  ServiceModel(
    title: 'Placement Assistant',
    path: '/placement-assistant',
    icon: kcUserTie,
  ),
];
