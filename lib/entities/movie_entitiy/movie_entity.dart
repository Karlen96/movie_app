import 'package:movie_app/consts/configs.dart';

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
    final int id = data['id'] ;
    final String title = data['title'];
    final String overview = data['overview'];
    final String imagePath = data['poster_path'];

    return MovieEntity(
      id: id,
      title: title,
      overview: overview,
      imageUrl: '${ConfigsEntity.baseImage}$imagePath',
    );
  }
}
