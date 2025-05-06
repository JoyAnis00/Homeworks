class ItemModel {
  final String englishWord;
  final String tokuWord;
  final String image;
  final String audio;

  const ItemModel(
      {required this.englishWord,
      required this.tokuWord,
      required this.image,
      required this.audio});
}

class PhrasesModel {
  final String englishWord;
  final String tokuWord;
  final String audio;
  const PhrasesModel(
      {required this.englishWord, required this.tokuWord, required this.audio});
}
