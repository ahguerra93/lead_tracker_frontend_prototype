import '../config/environment_config.dart';

/// Builds full public media URLs from raw storage paths returned by the API.
///
/// Raw paths look like `whatsapp/media/abc123.jpg`. The builder prepends the
/// configured storage origin and bucket name so the result is a valid URL:
/// `{storageUrl}/{bucketName}/{path}`
class MediaUrlBuilder {
  final EnvironmentConfig _config;

  const MediaUrlBuilder(this._config);

  String build(String path) {
    return '${_config.storageUrl}/${_config.bucketName}/$path';
  }
}
