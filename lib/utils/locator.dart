import 'package:dio/dio.dart';
import 'package:du_money_logger/utils/services/api/api_services.dart';
import 'package:du_money_logger/utils/services/backend_const.dart';
import 'package:du_money_logger/utils/services/ext/interceptor.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;
void setupLocators() {
  locator.registerFactory<ApiService>(() => ApiService(
      Dio()..interceptors.add(AuthInterceptor()),
      baseUrl: BackEndConst.domainUrl));
  // locator.registerFactory<UserDataSource>(
  //     () => UserDataSourceImpl(apiService: locator<ApiService>()));
  // locator.registerFactory<UserRepository>(
  //     () => UserRepositoryImpl(userDataSource: locator.get<UserDataSource>()));
  // locator.registerFactory<ClipRepository>(() => ClipRepositoryImpl());
}
