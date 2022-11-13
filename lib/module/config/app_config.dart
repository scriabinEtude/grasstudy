import 'package:grasstudy_client/module/config/app_config_type.dart';

class AppConfig {
  final AppConfigType type;
  final String baseUrl;

  AppConfig({
    required this.type,
    required this.baseUrl,
  });
}
