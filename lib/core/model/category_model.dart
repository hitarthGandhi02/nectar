import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CategoryModel {
  final int id;
  final DateTime created_at;
  final String name;
  CategoryModel({
    required this.id,
    required this.created_at,
    required this.name,
  });

  CategoryModel copyWith({
    int? id,
    DateTime? created_at,
    String? name,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as int,
      created_at: DateTime.parse(map['created_at']),
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryModel(id: $id, created_at: $created_at, name: $name)';

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.created_at == created_at &&
      other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ created_at.hashCode ^ name.hashCode;
}
