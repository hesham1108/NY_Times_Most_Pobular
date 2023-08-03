import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'article_media_metadata_model.g.dart';

@JsonSerializable()
class ArticleMediaMetadataModel extends Equatable {
  final String? url, format;
  final double width, height;

  const ArticleMediaMetadataModel({
    this.url,
    this.format,
    required this.width,
    required this.height,
  });
  factory ArticleMediaMetadataModel.fromJson(Map<String, dynamic> data) =>
      _$ArticleMediaMetadataModelFromJson(data);

  Map<String, dynamic> toJson() => _$ArticleMediaMetadataModelToJson(this);
  @override
  List<Object?> get props => [
        url,
        format,
        width,
        height,
      ];
}
