//the image List is comingempty

import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CategoryModel {
  final int id;
  final DateTime created_at;
  final String name;
  final List<String> images;
  CategoryModel({
    required this.id,
    required this.created_at,
    required this.name,
    required this.images,
  });

  CategoryModel copyWith({
    int? id,
    DateTime? created_at,
    String? name,
    List<String>? images,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      created_at: created_at ?? this.created_at,
      name: name ?? this.name,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'created_at': created_at.millisecondsSinceEpoch,
      'name': name,
      'images': images,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] ?? 0 ,
      created_at: DateTime.parse(map['created_at'] ?? DateTime.now().toString()),
      name: map['name'] ?? '',
      images: List<String>.from((map["image"] ?? [])),
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) );

  @override
  String toString() {
    return 'CategoryModel(id: $id, created_at: $created_at, name: $name, images: $images)';
  }

  @override
  bool operator ==(covariant CategoryModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.created_at == created_at &&
      other.name == name &&
      listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      created_at.hashCode ^
      name.hashCode ^
      images.hashCode;
  }
}
