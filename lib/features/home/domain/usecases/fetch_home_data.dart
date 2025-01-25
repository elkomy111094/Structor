import '../../data/repositories/home_repository.dart';
import '../entities/home_entity.dart';

class FetchHomeData {
  final HomeRepository repository;

  FetchHomeData(this.repository);

  Future<List<HomeEntity>> execute() async {
    final data = await repository.fetchHomeData();
    return data
        .map((model) => HomeEntity(id: model.id, title: model.title))
        .toList();
  }
}
