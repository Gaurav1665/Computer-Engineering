import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_card_pub/profile_card_pub.dart';

void main() {
  group('ProfileCardWidget Widget Tests', () {
    testWidgets('renders basic profile card with name and title', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProfileCardWidget(
              name: 'John Doe',
              title: 'Software Developer',
            ),
          ),
        ),
      );

      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('Software Developer'), findsOneWidget);
    });

    testWidgets('renders profile card with contact information', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProfileCardWidget(
              name: 'Jane Smith',
              title: 'UI/UX Designer',
              email: 'jane@example.com',
              phone: '+1 555-1234',
              website: 'https://janesmith.com',
            ),
          ),
        ),
      );

      expect(find.text('Jane Smith'), findsOneWidget);
      expect(find.text('UI/UX Designer'), findsOneWidget);
      expect(find.text('jane@example.com'), findsOneWidget);
      expect(find.text('+1 555-1234'), findsOneWidget);
      expect(find.text('https://janesmith.com'), findsOneWidget);
    });

    testWidgets('renders default avatar when no avatarUrl provided', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProfileCardWidget(
              name: 'Alex Johnson',
              title: 'Product Manager',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.person), findsOneWidget);
    });

    testWidgets('applies custom styling', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ProfileCardWidget(
              name: 'Test User',
              title: 'Test Title',
              backgroundColor: Colors.red,
              textColor: Colors.white,
              width: 200,
              height: 300,
            ),
          ),
        ),
      );

      expect(find.text('Test User'), findsOneWidget);
      expect(find.text('Test Title'), findsOneWidget);
    });
  });
}
