import 'package:equatable/equatable.dart';

class ReserveType extends Equatable {
  final int id;
  final String name;
  final int count;
  final int price;

  const ReserveType({
    required this.id,
    required this.name,
    required this.count,
    required this.price,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        count,
        price,
      ];
}
