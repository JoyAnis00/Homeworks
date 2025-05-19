class Article {
  
  String? title;
  String? description;
  String? urlToImage;
  

  Article({
    this.title,
    this.description,
    this.urlToImage,
  });
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      description: json['description'],
      urlToImage: json['image_url'],
    );
  }

}