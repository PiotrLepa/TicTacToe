import 'dart:convert';

import 'package:logger/logger.dart';

final logger = Logger();

String prettyJson(dynamic json) {
  const encoder = JsonEncoder.withIndent('  ');
  return encoder.convert(json);
}
