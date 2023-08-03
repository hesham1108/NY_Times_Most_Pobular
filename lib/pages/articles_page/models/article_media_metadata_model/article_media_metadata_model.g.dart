// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_media_metadata_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleMediaMetadataModel _$ArticleMediaMetadataModelFromJson(
        Map<String, dynamic> json) =>
    ArticleMediaMetadataModel(
      url: json['url'] as String?,
      format: json['format'] as String?,
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$ArticleMediaMetadataModelToJson(
        ArticleMediaMetadataModel instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'width': instance.width,
      'height': instance.height,
    };
