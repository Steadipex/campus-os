import 'package:campus_os/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the CampusOS timetable', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: CampusOsApp()));
    await tester.pumpAndSettle();
    expect(find.text('CampusOS'), findsOneWidget);
    expect(find.text('Data Structures and Algorithms'), findsOneWidget);
  });
}
