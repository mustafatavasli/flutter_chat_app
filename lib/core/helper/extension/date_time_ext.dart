extension DateTimeExt on DateTime {
  String toFormattedString(DateTime date) {
    final date = DateTime.now();
    return "${date.day}/${date.month}/${date.year} ${date.hour}:${date.minute}";
  }
}
