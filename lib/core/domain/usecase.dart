import 'package:equatable/equatable.dart';

abstract class UseCase<ReturnType, Param> {
  ReturnType call();
}

class NoParam extends Equatable {
  @override
  List<Object?> get props => [];
}
