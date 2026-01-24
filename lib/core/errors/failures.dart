import 'package:dio/dio.dart';

abstract class Failures {
  final String message;

 const Failures(this.message);
}

class ServerFailure extends Failures {
  
ServerFailure(super.message);

factory ServerFailure.fromDioError(DioException dioError) {
  switch (dioError.type) {
    case DioExceptionType.connectionTimeout:
      return ServerFailure('Connection timeout with ApiServer');
    case DioExceptionType.sendTimeout:
      return ServerFailure('Send timeout with ApiServer');
    case DioExceptionType.receiveTimeout:
      return ServerFailure('Receive timeout with ApiServer');
    case DioExceptionType.badCertificate:
      return ServerFailure('BadCertificate with ApiServer');
    case DioExceptionType.badResponse:
     
      return ServerFailure.fromresponse(
          dioError.response?.statusCode, dioError.response?.data);

    case DioExceptionType.cancel:
      return  ServerFailure('Request to ApiServer was canceled');
    case DioExceptionType.connectionError:
      return ServerFailure('No internet connection');
    case DioExceptionType.unknown:
      return ServerFailure('Opps there was an error');
    }
  
}

factory ServerFailure.fromresponse(int? statusCode, dynamic response) {
  if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
    return ServerFailure(response['error']['message']);
  } else if (statusCode == 404) {
    return ServerFailure('Your request not found');
  } else if (statusCode == 500) {
    return ServerFailure('Internal server error');
  } else {
    return ServerFailure('Opps there was an error');
  }
}


}
