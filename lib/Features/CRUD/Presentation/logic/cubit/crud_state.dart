part of 'crud_cubit.dart';

sealed class CrudState extends Equatable {
  const CrudState();

  @override
  List<Object> get props => [];
}

final class CrudInitial extends CrudState {}
final class Loading extends CrudState {}
final class Success extends CrudState {}
final class Fail extends CrudState {}
