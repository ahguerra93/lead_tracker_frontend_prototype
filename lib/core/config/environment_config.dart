import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  final String baseUrl;
  final String storageUrl;
  final String bucketName;

  const EnvironmentConfig._({required this.baseUrl, required this.storageUrl, required this.bucketName});

  factory EnvironmentConfig.fromSources() {
    const baseUrlKey = 'BASE_URL';
    const storageUrlKey = 'STORAGE_URL';
    const bucketNameKey = 'BUCKET_NAME';
    final baseUrl = _resolve(baseUrlKey, const String.fromEnvironment(baseUrlKey));
    final storageUrl = _resolve(storageUrlKey, const String.fromEnvironment(storageUrlKey));
    final bucketName = _resolve(bucketNameKey, const String.fromEnvironment(bucketNameKey));

    return EnvironmentConfig._(baseUrl: baseUrl, storageUrl: storageUrl, bucketName: bucketName);
  }

  static String _resolve(String key, String fromDartDefine) {
    final dotenvValue = dotenv.maybeGet(key);
    final resolvedValue = _firstNonEmpty([fromDartDefine, dotenvValue]);

    if (resolvedValue == null) {
      throw StateError(
        'Missing $key configuration. Provide $key via --dart-define '
        'or in the .env file.',
      );
    }
    return resolvedValue;
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
