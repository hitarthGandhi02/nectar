import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:nectar/core/model/brand_model.dart';
import 'package:nectar/core/model/category_model.dart';

class ProductModel {
  final int id;
  final BrandModel brand;
  final int brand_id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final CategoryModel category;
  final int category_id;
  final DateTime created_at;
  final Map<String, dynamic> specifications;
  ProductModel({
    required this.id,
    required this.brand,
    required this.brand_id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.category,
    required this.category_id,
    required this.created_at,
    required this.specifications,
  });

  ProductModel copyWith({
    int? id,
    BrandModel? brand,
    int? brand_id,
    String? name,
    String? description,
    double? price,
    List<String>? images,
    CategoryModel? category,
    int? category_id,
    DateTime? created_at,
    Map<String, dynamic>? specifications,
  }) {
    return ProductModel(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      brand_id: brand_id ?? this.brand_id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      images: images ?? this.images,
      category: category ?? this.category,
      category_id: category_id ?? this.category_id,
      created_at: created_at ?? this.created_at,
      specifications: specifications ?? this.specifications,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'brand_id': brand_id,
      'name': name,
      'description': description,
      'price': price,
      'images': images,
      'category_id': category_id,
      'specifications': specifications,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    print(map);
    return ProductModel(
      id: map['id'],
      brand: BrandModel.fromMap(map['brand']),
      brand_id: map['brand_id'],
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price'] ?? 0,
      images: List<String>.from(map['images']),
      category: CategoryModel.fromMap(map['category']),
      category_id: map['category_id'],
      created_at: DateTime.parse(map['created_at']),
      specifications: Map<String, dynamic>.from(map['specifications']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(id: $id, brand: $brand, brand_id: $brand_id, name: $name, description: $description, price: $price, images: $images, category: $category, category_id: $category_id, created_at: $created_at, specifications: $specifications)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.id == id &&
        other.brand == brand &&
        other.brand_id == brand_id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        listEquals(other.images, images) &&
        other.category == category &&
        other.category_id == category_id &&
        other.created_at == created_at &&
        mapEquals(other.specifications, specifications);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        brand.hashCode ^
        brand_id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        images.hashCode ^
        category.hashCode ^
        category_id.hashCode ^
        created_at.hashCode ^
        specifications.hashCode;
  }
}