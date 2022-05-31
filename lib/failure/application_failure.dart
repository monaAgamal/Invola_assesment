abstract class ApplicationFailure {}

class UnknownFailure implements ApplicationFailure {
  final String message;

  UnknownFailure({required this.message});
}

class InternetConnectionFailure implements ApplicationFailure {
  final String message;

  InternetConnectionFailure({required this.message});
}
