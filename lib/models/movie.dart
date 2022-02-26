import 'dart:convert';

import 'package:flutter/foundation.dart';

class Movie {
  double? popularity;
  int? voteCount;
  bool? video;
  String? posterPath;
  int? id;
  bool? adult;
  String? backdropPath;
  String? originalLanguage;
  String? originalTitle;
  List<int>? genreIds;
  String? title;
  double? voteAverage;
  String? overview;
  String? releaseDate;
  Movie({
    this.popularity,
    this.voteCount,
    this.video,
    this.posterPath,
    this.id,
    this.adult,
    this.backdropPath,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.title,
    this.voteAverage,
    this.overview,
    this.releaseDate,
  });

  Movie copyWith({
    double? popularity,
    int? voteCount,
    bool? video,
    String? posterPath,
    int? id,
    bool? adult,
    String? backdropPath,
    String? originalLanguage,
    String? originalTitle,
    List<int>? genreIds,
    String? title,
    double? voteAverage,
    String? overview,
    String? releaseDate,
  }) {
    return Movie(
      popularity: popularity ?? this.popularity,
      voteCount: voteCount ?? this.voteCount,
      video: video ?? this.video,
      posterPath: posterPath ?? this.posterPath,
      id: id ?? this.id,
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      genreIds: genreIds ?? this.genreIds,
      title: title ?? this.title,
      voteAverage: voteAverage ?? this.voteAverage,
      overview: overview ?? this.overview,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'popularity': popularity,
      'voteCount': voteCount,
      'video': video,
      'posterPath': posterPath,
      'id': id,
      'adult': adult,
      'backdropPath': backdropPath,
      'originalLanguage': originalLanguage,
      'originalTitle': originalTitle,
      'genreIds': genreIds,
      'title': title,
      'voteAverage': voteAverage,
      'overview': overview,
      'releaseDate': releaseDate,
    };
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      popularity: map['popularity']?.toDouble(),
      voteCount: map['vote_count']?.toInt(),
      video: map['video'],
      posterPath: map['poster_path'],
      id: map['id']?.toInt(),
      adult: map['adult'],
      backdropPath: map['backdrop_path'],
      originalLanguage: map['original_language'],
      originalTitle: map['original_title'],
      genreIds: List<int>.from(map['genre_ids']),
      title: map['title'],
      voteAverage: map['vote_average']?.toDouble(),
      overview: map['overview'],
      releaseDate: map['release_date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Movie(popularity: $popularity, voteCount: $voteCount, video: $video, posterPath: $posterPath, id: $id, adult: $adult, backdropPath: $backdropPath, originalLanguage: $originalLanguage, originalTitle: $originalTitle, genreIds: $genreIds, title: $title, voteAverage: $voteAverage, overview: $overview, releaseDate: $releaseDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Movie &&
        other.popularity == popularity &&
        other.voteCount == voteCount &&
        other.video == video &&
        other.posterPath == posterPath &&
        other.id == id &&
        other.adult == adult &&
        other.backdropPath == backdropPath &&
        other.originalLanguage == originalLanguage &&
        other.originalTitle == originalTitle &&
        listEquals(other.genreIds, genreIds) &&
        other.title == title &&
        other.voteAverage == voteAverage &&
        other.overview == overview &&
        other.releaseDate == releaseDate;
  }

  @override
  int get hashCode {
    return popularity.hashCode ^
        voteCount.hashCode ^
        video.hashCode ^
        posterPath.hashCode ^
        id.hashCode ^
        adult.hashCode ^
        backdropPath.hashCode ^
        originalLanguage.hashCode ^
        originalTitle.hashCode ^
        genreIds.hashCode ^
        title.hashCode ^
        voteAverage.hashCode ^
        overview.hashCode ^
        releaseDate.hashCode;
  }
}
