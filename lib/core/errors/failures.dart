import 'dart:io';
import 'package:http/http.dart' as http;

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromHttpError(Exception error) {
    if (error is SocketException) {
      return ServerFailure('No Internet Connection');
    } else if (error is http.ClientException) {
      return ServerFailure('Connection to the server failed');
    } else {
      return ServerFailure('Unexpected Error, Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message'] ?? 'Unauthorized access');
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try later');
    } else {
      return ServerFailure('Oops, there was an error, please try again');
    }
  }
}
