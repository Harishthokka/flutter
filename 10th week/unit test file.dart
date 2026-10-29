```dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:your_app_name/main.dart';

void main() {
  testWidgets('Check app title and welcome message',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('UI Unit Testing'), findsOneWidget);
    expect(find.text('Welcome to Flutter'), findsOneWidget);
  });

  testWidgets('Check icon and button',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byIcon(Icons.check_circle), findsOneWidget);
    expect(find.text('Click Me'), findsOneWidget);
  });

  testWidgets('Check button click',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.byKey(const Key('testButton')));
    await tester.pump();

    expect(
      find.text('Button clicked successfully!'),
      findsOneWidget,
    );
  });
}
```

  
