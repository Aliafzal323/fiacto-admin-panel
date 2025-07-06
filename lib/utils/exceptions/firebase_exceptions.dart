class FirebaseExceptions implements Exception {
  final String code;

  FirebaseExceptions(this.code);

  String get message {
    switch (code) {
      // Firebase Authentication Errors
      case 'unknown':
        return 'An unknown Firebase error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check the token.';
      case 'user-disabled':
        return 'User account has been disabled.';
      case 'user-not-found':
        return 'No user exists with that email.';
      case 'invalid-email':
        return 'The email address is invalid. Please enter a valid email.';
      case 'email-already-in-use':
        return 'Email already in use.';
      case 'wrong-password':
        return 'The password is invalid for the given email.';
      case 'weak-password':
        return 'The password is too weak.';
      case 'invalid-credential':
        return 'The provided credential is invalid.';
      case 'invalid-phone-number':
        return 'The phone number is invalid.';
      case 'account-exists-with-different-credential':
        return 'Account already exists with a different credential.';
      case 'requires-recent-login':
        return 'This operation requires recent login credentials.';
      case 'user-mismatch':
        return 'The provided credentials do not correspond to the same user.';
      case 'operation-not-allowed':
        return 'Operation not allowed. Please contact support.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'invalid-verification-code':
        return 'Invalid verification code. Please enter the correct code.';
      case 'invalid-verification-id':
        return 'Invalid verification ID. Please enter the correct ID.';
      case 'credential-already-in-use':
        return 'The provided credential is already associated with a different account.';

      // General Firebase Errors (non-auth specific)
      case 'network-request-failed':
        return 'Network error occurred. Please check your internet connection and try again.';
      case 'quota-exceeded':
        return 'The quota for the operation has been exceeded.';
      case 'service-unavailable':
        return 'The Firebase service is currently unavailable. Please try again later.';
      case 'deadline-exceeded':
        return 'The operation timed out. Please try again later.';

      // Other possible Firebase-related errors
      case 'app-not-authorized':
        return 'App is not authorized to perform this operation.';
      case 'firebase-network-error':
        return 'A network error occurred while accessing Firebase services.';
      case 'not-found':
        return 'The requested resource was not found.';

      default:
        return 'An unknown error occurred. Please try again later.';
    }
  }
}
