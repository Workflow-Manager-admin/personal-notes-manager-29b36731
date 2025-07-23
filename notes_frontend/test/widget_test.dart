import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  testWidgets('HomePage UI basic test', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    // Should find app bar header ("My Notes")
    expect(find.text('My Notes'), findsOneWidget);

    // Should find a search field
    expect(find.byType(TextField), findsOneWidget);

    // Should find New Note button (FAB)
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Theme toggle button present', (WidgetTester tester) async {
    await tester.pumpWidget(const NotesApp());
    expect(find.byIcon(Icons.light_mode), findsWidgets); // Since default: system/light
  });
}
