import 'package:flutter_test/flutter_test.dart';
import 'package:lead_tracker_frontend_prototype/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
  });
}
