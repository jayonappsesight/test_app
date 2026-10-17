// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:my_flutter_app/main.dart';

void main() {
  testWidgets('Login screen loads and displays essential widgets', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that essential widgets on the login screen are rendered.
    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Sign in to access your account'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);
    expect(find.text('Remember me'), findsOneWidget);
    expect(find.text('Forgot Password?'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);

    // Tap the 'Sign In' button with empty fields to trigger validation
    await tester.tap(find.text('Sign In'));
    await tester.pump();

    // Verify validation errors appear
    expect(find.text('Please enter your email'), findsOneWidget);
  });
}
