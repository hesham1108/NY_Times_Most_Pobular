import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../article_media_model/article_media_model.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel extends Equatable {
  final String? uri,
      url,
      source,
      published_date,
      updated,
      section,
      subsection,
      nytdsection,
      adx_keywords,
      column,
      byline,
      type,
      title,
      abstract;
  final List<String>? des_facet, org_facet, per_facet, geo_facet;
  final List<ArticleMediaModel>? media;
  final int id, asset_id, eta_id;

  const ArticleModel({
    required this.id,
    required this.asset_id,
    required this.eta_id,
    this.uri,
    this.url,
    this.source,
    this.published_date,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adx_keywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.abstract,
    this.media,
    this.des_facet,
    this.org_facet,
    this.per_facet,
    this.geo_facet,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> data) =>
      _$ArticleModelFromJson(data);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);

  @override
  List<Object?> get props => [
        id,
        eta_id,
        des_facet,
        org_facet,
        per_facet,
        geo_facet,
        asset_id,
        uri,
        url,
        source,
        published_date,
        updated,
        section,
        subsection,
        nytdsection,
        adx_keywords,
        column,
        byline,
        type,
        title,
        abstract,
        media,
      ];
}
