import 'package:test/test.dart';
import 'package:primitive_type_parser/primitive_type_parser.dart';

void main() {
  test('Test parseInt', () {
    expect(parseInt(2), 2);
    expect(parseInt(2, 5), 2);
    expect(parseInt("2"), 2);
    expect(parseInt(null, 5), 5);
    expect(parseInt(null), isNull);
  });

  test('Test parseDouble', () {
    expect(parseDouble(2), 2);
    expect(parseDouble(2.5), 2.5);
    expect(parseDouble("2"), 2);
    expect(parseDouble("2.5"), 2.5);
    expect(parseDouble("2.5", 5), 2.5);
    expect(parseDouble(null, 5), 5);
    expect(parseDouble(null), isNull);
  });

  test('Test parseString', () {
    expect(parseString(2), "2");
    expect(parseString("Hello"), "Hello");
    expect(parseString("Hello", "Hi"), "Hello");
    expect(parseString(null, "Hi"), "Hi");
  });

  test('Test parseBool', () {
    expect(parseBool(true), true);
    expect(parseBool(null), false);
    expect(parseBool(1), true);
    expect(parseBool(2), false);
    expect(parseBool(0), false);
    expect(parseBool("true"), true);
    expect(parseBool("false"), false);
    expect(parseBool("hello"), false);
    expect(parseBool(null), false);
    expect(parseBool(null, true), true);
  });

  test('Test parseDynamic', () {
    expect(parseDynamic(true), true);
    expect(parseDynamic("hello"), "hello");
    expect(parseDynamic(null), null);
    expect(parseDynamic(null, 2), 2);
  });

  test('Test parseDateTime', () {
    expect(parseDateTime(null), null);
    expect(parseDateTime(2), null);
    expect(parseDateTime("2"), null);
    expect(parseDateTime(DateTime(2012, 22, 11)), DateTime(2012, 22, 11));
    expect(
        parseDateTime("2012-02-27 13:27:00"), DateTime(2012, 2, 27, 13, 27, 0));
  });
}
