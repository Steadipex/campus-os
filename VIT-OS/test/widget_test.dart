import 'package:campus_os/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the CampusOS timetable', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: CampusOsApp()));
    await tester.pumpAndSettle();

    expect(find.text('CampusOS'), findsOneWidget);
    expect(find.text('Monday'), findsOneWidget);
    expect(find.text('Data Structures and Algorithms'), findsOneWidget);
  });

  testWidgets('switches timetable day', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: CampusOsApp()));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Tue'));
    await tester.pumpAndSettle();

    expect(find.text('Tuesday'), findsOneWidget);
    expect(find.text('No classes scheduled for this day.'), findsOneWidget);
  });
}
