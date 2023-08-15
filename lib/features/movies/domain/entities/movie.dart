
import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String posterImageUrl;
  final double averageRating;
  final String overview;
  final String bannerImageUrl;

  const Movie({
    required this.id,
    required this.title,
    required this.posterImageUrl,
    required this.averageRating,
    required this.overview,
    required this.bannerImageUrl,
  });


  @override
  List<Object?> get props =>
  [id, title, posterImageUrl, averageRating, overview, bannerImageUrl];

}