// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) => ArticleModel(
      id: json['id'] as int,
      asset_id: json['asset_id'] as int,
      eta_id: json['eta_id'] as int,
      uri: json['uri'] as String?,
      url: json['url'] as String?,
      source: json['source'] as String?,
      published_date: json['published_date'] as String?,
      updated: json['updated'] as String?,
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      nytdsection: json['nytdsection'] as String?,
      adx_keywords: json['adx_keywords'] as String?,
      column: json['column'] as String?,
      byline: json['byline'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      abstract: json['abstract'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => ArticleMediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      des_facet: (json['des_facet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      org_facet: (json['org_facet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      per_facet: (json['per_facet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      geo_facet: (json['geo_facet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ArticleModelToJson(ArticleModel instance) =>
    <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'source': instance.source,
      'published_date': instance.published_date,
      'updated': instance.updated,
      'section': instance.section,
      'subsection': instance.subsection,
      'nytdsection': instance.nytdsection,
      'adx_keywords': instance.adx_keywords,
      'column': instance.column,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'abstract': instance.abstract,
      'des_facet': instance.des_facet,
      'org_facet': instance.org_facet,
      'per_facet': instance.per_facet,
      'geo_facet': instance.geo_facet,
      'media': instance.media,
      'id': instance.id,
      'asset_id': instance.asset_id,
      'eta_id': instance.eta_id,
    };
