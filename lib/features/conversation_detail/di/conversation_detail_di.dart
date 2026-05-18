import 'package:get_it/get_it.dart';
import '../data/datasources/conversation_detail_remote_datasource.dart';
import '../data/repositories/conversation_detail_repository_impl.dart';
import '../domain/repositories/conversation_detail_repository.dart';
import '../domain/usecases/get_conversation_detail_usecase.dart';
import '../presentation/cubit/conversation_detail_cubit.dart';

void initConversationDetailDependencies(GetIt getIt) {
  getIt.registerLazySingleton<ConversationDetailRemoteDataSource>(
    () => ConversationDetailRemoteDataSourceImpl(getIt()),
  );

  getIt.registerLazySingleton<ConversationDetailRepository>(() => ConversationDetailRepositoryImpl(getIt()));

  getIt.registerLazySingleton(() => GetConversationDetailUseCase(getIt()));

  getIt.registerFactory(() => ConversationDetailCubit(getIt()));
}
