abstract class Failure {
  String error;

  Failure(this.error);
}

class RemoteFailure extends Failure {
  RemoteFailure(super.error);
}
