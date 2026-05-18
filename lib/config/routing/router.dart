import 'package:go_router/go_router.dart';
import '../../features/conversations/presentation/pages/conversations_page.dart';
import '../../features/conversation_detail/presentation/pages/conversation_detail_page.dart';

abstract final class AppRoutes {
  static const String home = '/conversations';
  static const String conversationDetail = '/conversation-detail';
}

abstract final class AppRouter {
  static GoRouter get router => GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(path: AppRoutes.home, builder: (_, __) => const ConversationsPage()),
      GoRoute(
        path: '${AppRoutes.conversationDetail}/:id',
        builder: (_, state) {
          final conversationId = state.pathParameters['id'] ?? '';
          return ConversationDetailPage(conversationId: conversationId);
        },
      ),
    ],
  );
}
