import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BrandModel {
  final int id;
  final String name;
  final DateTime created_at;
  BrandModel({
    required this.id,
    required this.name,
    required this.created_at
  });


  BrandModel copyWith({
    int? id,
    String? name,
    DateTime? created_at,
  }) {
    return BrandModel(
      id: id ?? this.id,
      name: name ?? this.name,
      created_at: created_at ?? this.created_at,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory BrandModel.fromMap(Map<String, dynamic> map) {
    return BrandModel(
      id: map['id'],
      name: map['name'] ,
      created_at: DateTime.parse(map['created_at']),
    );
  }

  String toJson() => json.encode(toMap());

  factory BrandModel.fromJson(String source) => BrandModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'BrandModel(id: $id, name: $name, created_at: $created_at)';

  @override
  bool operator ==(covariant BrandModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.created_at == created_at;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ created_at.hashCode;
}
