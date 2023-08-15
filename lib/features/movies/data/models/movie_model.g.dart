// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => MovieModel(
      id: json['id'] as int,
      title: json['title'] as String,
      posterImageUrl: json['poster_path'] as String,
      averageRating: (json['vote_average'] as num).toDouble(),
      overview: json['overview'] as String,
      bannerImageUrl: json['backdrop_path'] as String,
    );
