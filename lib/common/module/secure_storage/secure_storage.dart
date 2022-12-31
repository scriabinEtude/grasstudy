// ignore_for_file: constant_identifier_names

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:grasstudy_client/data/model/jwt.dart';

class SecureStorage {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  static const String KEY_ACCESS_TOKEN = 'accessToken';
  static const String KEY_REFRESH_TOKEN = 'refreshToken';

  Future<void> jwtSet(JWT jwt) async {
    await _secureStorage.write(
      key: KEY_ACCESS_TOKEN,
      value: jwt.accessToken,
    );
    await _secureStorage.write(
      key: KEY_REFRESH_TOKEN,
      value: jwt.refreshToken,
    );
  }

  Future<void> jwtRemove() async {
    await _secureStorage.delete(key: KEY_ACCESS_TOKEN);
    await _secureStorage.delete(key: KEY_REFRESH_TOKEN);
  }

  Future<JWT> jwtGet() async {
    return JWT(
      accessToken: await _secureStorage.read(key: KEY_ACCESS_TOKEN) ?? "",
      refreshToken: await _secureStorage.read(key: KEY_REFRESH_TOKEN) ?? "",
    );
  }

  Future<Map<String, dynamic>> getRequestHeader() async {
    final String? accessToken =
        await _secureStorage.read(key: KEY_ACCESS_TOKEN);

    return {
      if (accessToken != null) 'Authorization': 'Bearer $accessToken',
    };
  }

  // singleton
  static final SecureStorage _ = SecureStorage._internal();

  factory SecureStorage() {
    return _;
  }

  SecureStorage._internal();
}
