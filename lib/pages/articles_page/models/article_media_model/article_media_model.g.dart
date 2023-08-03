// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleMediaModel _$ArticleMediaModelFromJson(Map<String, dynamic> json) =>
    ArticleMediaModel(
      type: json['type'] as String,
      subtype: json['subtype'] as String,
      caption: json['caption'] as String,
      copyright: json['copyright'] as String,
      approved_for_syndication: json['approved_for_syndication'] as int,
      media_metadata: (json['media-metadata'] as List<dynamic>?)
          ?.map((e) =>
              ArticleMediaMetadataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleMediaModelToJson(ArticleMediaModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'approved_for_syndication': instance.approved_for_syndication,
      'media-metadata': instance.media_metadata,
    };
