import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt.freezed.dart';
part 'jwt.g.dart';

@freezed
class JWT with _$JWT {
  JWT._();
  factory JWT({
    required String accessToken,
    required String refreshToken,
  }) = _JWT;

  bool get isExist => accessToken.isNotEmpty && refreshToken.isNotEmpty;

  factory JWT.fromJson(Map<String, dynamic> json) => _$JWTFromJson(json);
}
