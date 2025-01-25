import '../models/home_model.dart';

class HomeRepository {
  Future<List<HomeModel>> fetchHomeData() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      HomeModel(id: "1", title: "Home Item 1"),
      HomeModel(id: "2", title: "Home Item 2"),
    ];
  }
}
