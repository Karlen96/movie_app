class ConfigEntity {
  ConfigEntity({
    required this.baseUrl,
    required this.apiKey,
  });

  final String baseUrl;
  final String apiKey;

  factory ConfigEntity.fromJson(Map<String, dynamic> data) {
    final String baseUrl = data['baseUrl'];
    final String apiKey = data['apiKey'];

    return ConfigEntity(
      baseUrl: baseUrl,
      apiKey: apiKey,
    );
  }
}
