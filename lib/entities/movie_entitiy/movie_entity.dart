import '../../consts/configs.dart';

class MovieEntity {
  MovieEntity({
    required this.id,
    required this.title,
    this.overview,
    this.imageUrl,
  });

  final int id;
  final String title;
  final String? overview;
  final String? imageUrl;

  factory MovieEntity.fromJson(Map<String, dynamic> data) {
    final id = data['id'] as int;
    final title = data['title'] as String;
    final overview = data['overview'] as String;
    final imagePath = data['poster_path'] as String;

    return MovieEntity(
      id: id,
      title: title,
      overview: overview,
      imageUrl: '${ConfigsEntity.baseImage}$imagePath',
    );
  }
}
