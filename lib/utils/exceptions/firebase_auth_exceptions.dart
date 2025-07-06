class FirebaseAuthExceptions implements Exception {
  final String code;

  FirebaseAuthExceptions(this.code);

  String get message {
    switch (code) {
      case 'email-already-in-use':
        return 'The email address is already in use by another account.';
      case 'invalid-email':
        return 'The email address is badly formatted.';
      case 'weak-password':
        return 'The password is too weak.';
      case 'user-disabled':
        return 'The user corresponding to the given email has been disabled.';
      case 'user-not-found':
        return 'There is no user corresponding to the given email.';
      case 'wrong-password':
        return 'The password is invalid for the given email.';
      case 'invalid-verification-code':
        return 'Invalid Verification Code. Please enter the correct Code.';
      case 'invalid-verification-id':
        return 'Invalid Verification ID. Please enter the correct ID.';
      case 'operation-not-allowed':
        return 'Operation not allowed. Please contact support.';
      case 'too-many-requests':
        return 'Too many requests. Please try again later.';
      case 'account-exists-with-different-credential':
        return 'The account already exists with a different sign-in method.';
      case 'invalid-credential':
        return 'The provided credential is invalid.';
      case 'invalid-phone-number':
        return 'The phone number is invalid.';
      case 'credential-already-in-use':
        return 'The provided credential is already associated with a different account.';
      case 'requires-recent-login':
        return 'This operation requires a more recent sign-in.';
      case 'user-mismatch':
        return 'The provided credentials do not correspond to the same user.';
      case 'auth/user-not-found':
        return 'No user record corresponding to this identifier.';
      case 'auth/user-disabled':
        return 'The user has been disabled by an administrator.';
      case 'auth/invalid-email':
        return 'The email address is not valid.';
      case 'auth/operation-not-allowed':
        return 'The requested operation is not allowed.';
      case 'auth/weak-password':
        return 'The password is too weak to create an account.';
      case 'auth/account-exists-with-different-credential':
        return 'There is already an account with this email address but with a different sign-in method.';
      case 'auth/invalid-credential':
        return 'The provided credential is invalid.';
      case 'auth/missing-credential':
        return 'A required credential is missing.';
      case 'auth/credential-already-in-use':
        return 'The provided credential is already in use by another user.';
      case 'auth/too-many-requests':
        return 'Too many requests have been made. Please try again later.';
      case 'auth/requires-recent-login':
        return 'This operation requires recent login credentials.';
      case 'auth/invalid-verification-id':
        return 'The verification ID is invalid.';
      case 'auth/invalid-verification-code':
        return 'The verification code is invalid.';
      case 'auth/user-mismatch':
        return 'The credentials do not correspond to the same user.';
      case 'auth/email-already-in-use':
        return 'The email is already associated with another account.';
      case 'auth/wrong-password':
        return 'The password is incorrect.';
      default:
        return 'An unknown error occurred.';
    }
  }
}
