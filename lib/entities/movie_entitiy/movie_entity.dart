class MovieEntity {
  MovieEntity({
    required this.name,
    this.description,
  });

  final String name;
  final String? description;

  factory MovieEntity.fromJson(Map<String, dynamic> data) {
    final String name = data['name'];
    final String description = data['description'];

    return MovieEntity(
      name: name,
      description: description,
    );
  }
}
