import 'dart:convert';

import 'package:logger/logger.dart';

final logger = Logger();

String prettyJson(Map<String, dynamic> json) {
  JsonEncoder encoder = new JsonEncoder.withIndent('  ');
  return encoder.convert(json);
}
