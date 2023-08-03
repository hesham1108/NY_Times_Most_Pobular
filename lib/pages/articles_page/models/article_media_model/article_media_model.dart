import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../article_media_metadata_model/article_media_metadata_model.dart';

part 'article_media_model.g.dart';

@JsonSerializable()
class ArticleMediaModel extends Equatable {
  final String type, subtype, caption, copyright;
  final int approved_for_syndication;
  final List<ArticleMediaMetadataModel>? media_metadata;

  const ArticleMediaModel({
    required this.type,
    required this.subtype,
    required this.caption,
    required this.copyright,
    required this.approved_for_syndication,
    required this.media_metadata,
  });
  factory ArticleMediaModel.fromJson(Map<String, dynamic> data) =>
      _$ArticleMediaModelFromJson(data);

  Map<String, dynamic> toJson() => _$ArticleMediaModelToJson(this);
  @override
  List<Object?> get props => [
        type,
        subtype,
        caption,
        copyright,
        approved_for_syndication,
        media_metadata,
      ];
}
