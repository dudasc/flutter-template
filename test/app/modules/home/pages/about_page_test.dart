import 'package:flutter_template/app/modules/shared/pages/about_page.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  group('AboutPage', () {
    testWidgets('has a title and message', (WidgetTester tester) async {
      await tester.pumpWidget(buildTestableWidget(const AboutPage(title: 'T')));
      final titleFinder = find.text('T');
      expect(titleFinder, findsOneWidget);
    });
  });
}