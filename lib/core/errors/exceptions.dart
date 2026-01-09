abstract class AppException implements Exception {
  final String message;
  const AppException(this.message);
}

class RemoteException extends AppException {
  @override
  const RemoteException(super.message);
}

class LocalException extends AppException {
  @override
  const LocalException(super.message);
}
