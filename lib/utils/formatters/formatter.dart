import 'package:intl/intl.dart';

class TFormatter {
  TFormatter._(); // Private constructor

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_BD', symbol: '৳').format(amount); // Using Bangladeshi Taka symbol
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Remove all non-digit characters
    String digitsOnly = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');

    // Bangladeshi phone number regex pattern
    final bangladeshiPhonePattern = RegExp(r'^(?:\+?88)?01[3-9]\d{8}$');

    if (bangladeshiPhonePattern.hasMatch(digitsOnly)) {
      // Format for Bangladeshi numbers: +880 1XXX XXX XXX or 01XXX XXX XXX
      if (digitsOnly.startsWith('880')) {
        return '+${digitsOnly.substring(0, 3)} ${digitsOnly.substring(3, 5)} ${digitsOnly.substring(5, 8)} ${digitsOnly.substring(8)}';
      } else if (digitsOnly.startsWith('01')) {
        return '${digitsOnly.substring(0, 2)} ${digitsOnly.substring(2, 5)} ${digitsOnly.substring(5, 8)} ${digitsOnly.substring(8)}';
      }
    }
    // Return original if doesn't match Bangladeshi pattern
    return phoneNumber;
  }
}