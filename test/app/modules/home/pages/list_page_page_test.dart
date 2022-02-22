import 'package:flutter_template/app/modules/home/pages/tab1_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('Tab1Page', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(const Tab1Page(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}