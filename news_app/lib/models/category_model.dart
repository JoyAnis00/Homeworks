class CategoryModel {
  final String name;
  final String categoryimage;
  const CategoryModel({required this.name, required this.categoryimage});
}

final List<CategoryModel> categories = [
  CategoryModel(name: 'Bussnese', categoryimage: 'assets/bussness.jpg'),
  CategoryModel(name: 'Sports', categoryimage: 'assets/sports (1).jpg'),
  CategoryModel(name: 'Healthy', categoryimage: 'assets/healthy.jpg'),
  CategoryModel(name: 'General', categoryimage: 'assets/general.jpg'),
  CategoryModel(name: 'Science', categoryimage: 'assets/science.jpg'),
  CategoryModel(name: 'Environment', categoryimage: 'assets/environment.jpg'),
];
