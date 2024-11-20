class PostCards {
  final String userName;
  final String loc;
  final String post;

  PostCards({
    required this.userName,
    required this.loc,
    required this.post,
  });

  Map<String, dynamic> foodCard() {
    return {
      "name": userName,
      "location": loc,
      "image": post,
    };
  }
}
