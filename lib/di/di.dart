import 'package:get_it/get_it.dart';
import '../core/network/dio_client.dart';
import '../features/conversations/di/conversations_di.dart';
import '../features/conversation_detail/di/conversation_detail_di.dart';

final GetIt getIt = GetIt.instance;

void initDependencies() {
  // Network
  getIt.registerSingleton<DioClient>(DioClient.create(baseUrl: 'https://api.example.com/v1'));

  // Expose Dio instance for datasources
  getIt.registerSingleton(getIt<DioClient>().dio);

  // Features
  initConversationsDependencies(getIt);
  initConversationDetailDependencies(getIt);
}
