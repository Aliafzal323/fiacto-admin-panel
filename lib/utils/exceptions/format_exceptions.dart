class FormatExceptions implements Exception {
  final String message;

  FormatExceptions([
    this.message =
        'An un-expected format error Occurred.Please check your input.',
  ]);

  factory FormatExceptions.fromMessage(String message) {
    return FormatExceptions(message);
  }

  String get formattedMessage => message;

  factory FormatExceptions.fromJson(Map<String, dynamic> json) {
    return FormatExceptions(json['message']);
  }

  factory FormatExceptions.fromCode(String code) {
    switch (code) {
      case 'invalid-email-format':
        return FormatExceptions('The email address is not valid.');
      case 'invalid-phone-number':
        return FormatExceptions(
            'The phone number is not valid. Please check your input.');

      default:
        return FormatExceptions(
            'An un-expected format error Occurred.Please check your input.');
    }
  }
}
