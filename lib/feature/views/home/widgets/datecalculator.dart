import 'dart:core';
import 'dart:developer';

bool checkdateisvailid(String? duedate) {
  if (duedate == null) {
    return true;
  }
  String dueDateString = duedate;

  DateTime dueDate = parseDueDate(dueDateString);

  int differenceInDays = calculateDifferenceInDays(dueDate, DateTime.now());

  if (differenceInDays > 60) {
    log('Current date is over 60 days from the due date. $differenceInDays');
    return false;
  } else {
    log('Current date is within 60 days from the due date.$differenceInDays');
    return true;
  }
}

DateTime parseDueDate(String dueDateString) {
  List<String> parts = dueDateString.split(' ');
  int day = int.parse(parts[0]);
  int month = monthAbbreviationToNumber(parts[1]);
  int year = int.parse(parts[2]);

  return DateTime(year, month, day);
}

int monthAbbreviationToNumber(String monthAbbreviation) {
  switch (monthAbbreviation.toLowerCase()) {
    case 'jan':
      return 1;
    case 'feb':
      return 2;
    case 'mar':
      return 3;
    case 'apr':
      return 4;
    case 'may':
      return 5;
    case 'jun':
      return 6;
    case 'jul':
      return 7;
    case 'aug':
      return 8;
    case 'sep':
      return 9;
    case 'oct':
      return 10;
    case 'nov':
      return 11;
    case 'dec':
      return 12;
    default:
      throw ArgumentError('Invalid month abbreviation: $monthAbbreviation');
  }
}

int calculateDifferenceInDays(DateTime startDate, DateTime endDate) {
  return endDate.difference(startDate).inDays;
}
