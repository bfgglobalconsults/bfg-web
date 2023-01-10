import 'package:bfgglobal/core/utils/logger.dart';
import 'package:firebase_core/firebase_core.dart';

abstract class BreejException implements Exception {
  String get message;

  @override
  operator ==(other) {
    return other is BreejException && message == other.message;
  }

  @override
  int get hashCode => message.hashCode;
}

abstract class ServerException implements BreejException {}

class TimeoutServerException implements ServerException {
  final String msg;
  TimeoutServerException([this.msg = "connection timeout"]);

  @override
  String get message => msg;
}

class UnexpectedServerException implements ServerException {
  final String msg;
  UnexpectedServerException([this.msg = "An unexpected error occured"]);

  @override
  String get message => msg;
}

class UnknownServerException implements ServerException {
  @override
  String get message => "An unknown error occured";
}

class SessionExpiredServerException implements ServerException {
  @override
  String get message => "Session expired";
}

class BreejServerException implements ServerException {
  final String msg;
  BreejServerException([this.msg = "An unexpected error occured"]);

  @override
  String get message => msg;
}

class FirebaseServerException implements ServerException {
  final FirebaseException exception;
  FirebaseServerException(this.exception);

  @override
  String get message {
    Log.e(exception.toString());
    switch (exception.code) {
      case 'invalid-email':
        return 'Invalid email address or password';

      case 'user-not-found':
        return 'User not found';

      case 'wrong-password':
        return 'Invalid email address or password';

      case 'email-already-in-use':
        return 'Email address already in use';

      case 'weak-password':
        return 'Password is too weak';

      case 'network-request-failed':
        return 'Network request failed';

      case 'too-many-requests':
        return 'Too many requests';

      case 'user-disabled':
        return 'User disabled, Please contact support';

      case 'user-token-expired':
        return 'Session expired';

      case 'user-token-invalid':
        return 'Session expired';

      case 'user-token-not-found':
        return 'Session expired';

      case 'user-token-revoked':
        return 'Session expired';

      case 'invalid-action-code':
        return 'Session expired';

      default:
        return 'An unexpected error occured';
    }
  }
}

class InvalidArgOrDataException implements BreejException {
  final String msg;
  InvalidArgOrDataException([this.msg = "error in arguments or data"]);
  @override
  String get message => msg;
}

class CacheGetException implements BreejException {
  CacheGetException();
  @override
  String get message => "error retrieving data from cache";
}

class CachePutException implements BreejException {
  CachePutException();
  @override
  String get message => "error storing data in cache";
}
