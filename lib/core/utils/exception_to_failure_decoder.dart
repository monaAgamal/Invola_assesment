import 'package:invola_assesment/exceptions/application_exception.dart';
import 'package:invola_assesment/failure/application_failure.dart';

ApplicationFailure exceptionToFailureDecoder({
  required ApplicationException exception,
}) {
  return UnknownFailure(message: "Some thing went wrong");
}
