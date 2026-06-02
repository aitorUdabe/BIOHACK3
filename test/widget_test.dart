import 'package:anti_gravity/app/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  testWidgets('shows splash entry points', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: AntiGravityApp()));
    await tester.pumpAndSettle();

    expect(find.text('Anti-Gravity'), findsOneWidget);
    expect(find.text('Empezar onboarding'), findsOneWidget);
    expect(find.text('Ver dashboard demo'), findsOneWidget);
  });
}
