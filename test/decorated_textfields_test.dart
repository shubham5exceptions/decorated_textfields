import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:decorated_textfields/decorated_textfields.dart';

void main() {
  const MethodChannel channel = MethodChannel('decorated_textfields');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DecoratedTextfields.platformVersion, '42');
  });
}
