class ContainerModel {
  String title;
  String description;
   ContainerModel({required this.title, required this.description});
}


final ContainerModel one = ContainerModel(title: 'Top Quality', description: 'We are an ISO 9001:2015 certified company, so be assured for the quality');
final ContainerModel two = ContainerModel(title: 'Franchise Opportunity', description: 'Medilance is focused on its franchise network and deliver the best molecules and services');
final ContainerModel three = ContainerModel(title: 'Our Products', description: 'We offer a wide range of pharmaceutical products with best in class quality');

final List<ContainerModel> containerModel = [one, two, three];