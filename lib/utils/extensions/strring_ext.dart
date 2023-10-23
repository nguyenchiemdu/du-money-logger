extension StringExt on String {
  String getFileExtension() {
    try {
      return split('.').last;
    } catch (e) {
      return '';
    }
  }

  bool isValidPhoneNumber() {
    // Regular expression pattern for a valid phone number
    RegExp regex = RegExp(r'^\+?\d{9,}$');

    // Check if the phone number matches the pattern
    if (regex.hasMatch(this)) {
      return true; // Valid phone number
    } else {
      return false; // Invalid phone number
    }
  }

  bool isValidEmail() {
    // Regular expression pattern for a valid email
    RegExp regex = RegExp(
      r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,}$',
      caseSensitive: false,
      multiLine: false,
    );

    // Check if the email matches the pattern
    if (regex.hasMatch(this)) {
      return true; // Valid email
    } else {
      return false; // Invalid email
    }
  }

  bool isValidPassword() {
    // TODO: impl later
    return true;
  }

  String multiply(int times) {
    return List<String>.filled(times, this).join();
  }
}
