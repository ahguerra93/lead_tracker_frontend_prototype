class EnvironmentConfig {
  final String baseUrl;

  const EnvironmentConfig._({required this.baseUrl});

  factory EnvironmentConfig.fromSources({String? dotenvBaseUrl}) {
    const fromDartDefine = String.fromEnvironment('BASE_URL');
    final resolvedBaseUrl = _firstNonEmpty([fromDartDefine, dotenvBaseUrl]);

    if (resolvedBaseUrl == null) {
      throw StateError(
        'Missing BASE_URL configuration. Provide BASE_URL via --dart-define '
        'or in the .env file.',
      );
    }

    return EnvironmentConfig._(baseUrl: resolvedBaseUrl);
  }

  static String? _firstNonEmpty(List<String?> values) {
    for (final value in values) {
      if (value != null && value.trim().isNotEmpty) {
        return value.trim();
      }
    }
    return null;
  }
}
