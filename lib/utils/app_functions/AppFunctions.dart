

class AppFunctions{

  static String formatCountryCode(String text) {
    // Extract the country code from the input string
    String countryCode = text.replaceAll(RegExp(r'[^0-9+]'), '');

    // Format the country code as "(+xxx)"
    return '(+$countryCode)';
  }
}