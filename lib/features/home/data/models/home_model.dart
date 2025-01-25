class HomeModel {
  final String id;
  final String title;

  HomeModel({required this.id, required this.title});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      id: json['id'],
      title: json['title'],
    );
  }
}
