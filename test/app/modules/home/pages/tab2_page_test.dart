import 'package:flutter_template/app/modules/home/pages/tab2_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Tab2Page', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(const Tab2Page(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}