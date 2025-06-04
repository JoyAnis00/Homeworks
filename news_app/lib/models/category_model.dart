import 'package:news_app/styles/assets.dart';

class CategoryModel {
  final String name;
  final String categoryimage;
  const CategoryModel({required this.name, required this.categoryimage});
}

final List<CategoryModel> categories = [
  CategoryModel(name: 'Business', categoryimage: Assets.resourceBusiness),
  CategoryModel(name: 'Sports', categoryimage: Assets.resourceSports),
  CategoryModel(name: 'Health', categoryimage: Assets.resourceHealthy),
  CategoryModel(name: 'Technology', categoryimage: Assets.resourceTechnology),
  CategoryModel(name: 'Science', categoryimage: Assets.resourceScience),
  CategoryModel(name: 'Environment', categoryimage: Assets.resourceEnvironment),
];
