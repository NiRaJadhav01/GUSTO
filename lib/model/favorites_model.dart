class FavoritesModel {
  String imageUrl;
  String title;
  String description;
  String isLiked;

  FavoritesModel({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.isLiked,
  });
}

List<FavoritesModel> favoriteList = [];
