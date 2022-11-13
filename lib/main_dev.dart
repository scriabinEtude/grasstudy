import 'package:grasstudy_client/main_common.dart';
import 'package:grasstudy_client/module/config/app_config.dart';
import 'package:grasstudy_client/module/config/app_config_type.dart';

void main(List<String> args) {
  final AppConfig appConfig = AppConfig(
    type: AppConfigType.dev,
    baseUrl:
        "https://ec2-43-200-232-163.ap-northeast-2.compute.amazonaws.com:8080",
  );

  mainCommon(appConfig);
}
