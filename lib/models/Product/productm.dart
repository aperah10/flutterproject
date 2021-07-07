import 'dart:html';

import 'package:equatable/equatable.dart';

class ProductP extends Equatable {
  String id;
  String title;
  String description;
  int salesPrice;
  int discountPrice;
  int ourPrice;
  String category;
  String date;
  int stock;
  String pic;
  int offers;
  String uplod;

  ProductP(
   { required this.id,
    required this.uplod,
    required this.title,
    required this.description,
    required this.salesPrice,
    required this.discountPrice,
    required this.category,
    required this.date,
    required this.stock,
    required this.pic, 
    this.offers=10,
    this.ourPrice=20,
  });

  factory ProductP.fromJson(Map<String, dynamic> json) => ProductP(
     id: json['id'],
     title: json["title"],
     uplod: json['uplod'],
     description: json['description'],
      salesPrice:json['sales_price'],
      discountPrice:json['discount_price'],
      category:json['category'],
      date:json['date'],
      stock:json['stock'],
      pic:json['pic'],
      offers:json['offers'],
     ourPrice: json['our_price'])
     ;

  @override
  List<Object> get props => ['id'];
}
