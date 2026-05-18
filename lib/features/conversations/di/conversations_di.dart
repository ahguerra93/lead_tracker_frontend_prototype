import 'package:get_it/get_it.dart';
import '../data/datasources/conversations_remote_datasource.dart';
import '../data/repositories/conversations_repository_impl.dart';
import '../domain/repositories/conversations_repository.dart';
import '../domain/usecases/get_conversations_usecase.dart';
import '../presentation/cubit/conversations_cubit.dart';

void initConversationsDependencies(GetIt getIt) {
  getIt.registerLazySingleton<ConversationsRemoteDataSource>(() => ConversationsRemoteDataSourceImpl(getIt()));

  getIt.registerLazySingleton<ConversationsRepository>(() => ConversationsRepositoryImpl(getIt()));

  getIt.registerLazySingleton(() => GetConversationsUseCase(getIt()));

  getIt.registerFactory(() => ConversationsCubit(getIt()));
}
