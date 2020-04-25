import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;

///Generate MD5 hash
generateMd5(String data) {
  var content = new Utf8Encoder().convert(data);
  var md5 = crypto.md5;
  var digest = md5.convert(content);
  return hex.encode(digest.bytes);
}

const String kxApiKey = 'WFIgqXp8Qyr0AF3wIVGglSKLN7qgw7EtPu5V7mWUbIaoSMGIUppTgaCKqaWh7Gb5Lyrf8L2A177';