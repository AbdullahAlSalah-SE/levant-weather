part of '../imports/app_imports.dart';

class Clouds {
  final int? all;

  Clouds({this.all});

  factory Clouds.fromJson(dynamic json) {
    if (json == null) {
      return Clouds();
    }

    return Clouds(
      all: json['all'],
    );
  }
}
