int parseInt(dynamic value, [int fallback]) {
  if (value is int || value == null) {
    return value ?? fallback;
  } else if (value is double) {
    return value.toInt();
  } else if (value is String) {
    return int.tryParse(value) ?? fallback;
  } else {
    return fallback;
  }
}

double parseDouble(dynamic value, [double fallback]) {
  if (value is double || value == null) {
    return value ?? fallback;
  } else if (value is int) {
    return value.toDouble();
  } else if (value is String) {
    return double.tryParse(value) ?? fallback;
  } else {
    return fallback;
  }
}

String parseString(dynamic value, [String fallback]) {
  if (value is String || value == null) {
    return value ?? fallback;
  } else {
    return value?.toString() ?? fallback;
  }
}

bool parseBool(dynamic value, [bool fallback = false]) {
  if (value is bool || value == null) {
    return value ?? fallback;
  } else if (value is String) {
    if (value == "true")
      return true;
    else if (value == "false")
      return false;
    else
      return fallback;
  } else if (value is int) {
    if (value == 1)
      return true;
    else if (value == 0)
      return false;
    else
      return fallback;
  } else {
    return fallback;
  }
}

dynamic parseDynamic(dynamic value, [dynamic fallback]) {
  return value ?? fallback;
}

DateTime parseDateTime(dynamic value, [DateTime fallback]) {
  if (value is DateTime || value == null) {
    return value ?? fallback;
  } else if (value is String) {
    return DateTime.tryParse(value);
  } else {
    return fallback;
  }
}
