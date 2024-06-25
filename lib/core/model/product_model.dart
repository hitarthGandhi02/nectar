import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:nectar/core/model/brand_model.dart';
import 'package:nectar/core/model/category_model.dart';

class ProductModel {
  final int id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final CategoryModel category;
  final BrandModel brand;
  final DateTime created_at;
  final Map<String, dynamic> specifications;
  final String tag;
  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.category,
    required this.brand,
    required this.created_at,
    required this.specifications,
    required this.tag,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    String? description,
    double? price,
    List<String>? images,
    CategoryModel? category,
    BrandModel? brand,
    DateTime? created_at,
    Map<String, dynamic>? specifications,
    String? tag,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      images: images ?? this.images,
      category: category ?? this.category,
      brand: brand ?? this.brand,
      created_at: created_at ?? this.created_at,
      specifications: specifications ?? this.specifications,
      tag: tag ?? this.tag,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'images': images,
      'category': category.toMap(),
      'brand': brand.toMap(),
      'specifications': specifications,
      'tag': tag,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    print(map);
      return ProductModel(
        id: map['id'] ?? 0,
        name: map['name'] ?? '',
        description: map['description'] ?? '',
        price: map['price'] ?? 0.0,
        images: List<String>.from((map['images']) ?? []),
        category: CategoryModel.fromMap(map['category'] ?? {}),
        brand: BrandModel.fromMap(map['brand'] ?? {}),
        created_at: DateTime.parse(map['created_at'] ?? DateTime.now().toString()),
        specifications: Map<String, dynamic>.from(map['specifications'] ?? {}),
        tag: map['tag'] ?? '',
      );
    }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, price: $price, images: $images, category: $category, brand: $brand, created_at: $created_at, specifications: $specifications, tag: $tag)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.price == price &&
      listEquals(other.images, images) &&
      other.category == category &&
      other.brand == brand &&
      other.created_at == created_at &&
      other.specifications == specifications &&
      other.tag == tag;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      images.hashCode ^
      category.hashCode ^
      brand.hashCode ^
      created_at.hashCode ^
      specifications.hashCode ^
      tag.hashCode;
  }
}