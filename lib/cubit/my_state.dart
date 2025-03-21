part of 'my_cubit.dart';

@immutable
  sealed class MyState {}

final class MyInitial extends MyState {}

final class onButtonPressedState extends MyState {}
