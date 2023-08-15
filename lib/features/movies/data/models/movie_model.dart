import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable(
  createToJson: false,
)

class MovieModel extends Equatable {
  final int id;
  final String title;
  @JsonKey(name: 'poster_path')
  final String posterImageUrl;
  @JsonKey(name: 'vote_average')
  final double averageRating;
  final String overview;
  @JsonKey(name: 'backdrop_path')
  final String bannerImageUrl;

  const MovieModel({
    required this.id,
    required this.title,
    required this.posterImageUrl,
    required this.averageRating,
    required this.overview,
    required this.bannerImageUrl,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  @override
  List<Object?> get props =>
      [id, title, posterImageUrl, averageRating, overview, bannerImageUrl];

}