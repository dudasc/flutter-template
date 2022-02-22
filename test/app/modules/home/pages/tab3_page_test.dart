import 'package:flutter_template/app/modules/home/pages/tab3_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Tab3Page', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(const Tab3Page(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}