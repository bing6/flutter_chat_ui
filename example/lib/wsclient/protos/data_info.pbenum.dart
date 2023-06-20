///
//  Generated code. Do not modify.
//  source: data_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class RouteType extends $pb.ProtobufEnum {
  static const RouteType Default = RouteType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Default');

  static const $core.List<RouteType> values = <RouteType> [
    Default,
  ];

  static final $core.Map<$core.int, RouteType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static RouteType? valueOf($core.int value) => _byValue[value];

  const RouteType._($core.int v, $core.String n) : super(v, n);
}

class ChatMessageContentType extends $pb.ProtobufEnum {
  static const ChatMessageContentType Text = ChatMessageContentType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Text');
  static const ChatMessageContentType Audio = ChatMessageContentType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Audio');
  static const ChatMessageContentType Image = ChatMessageContentType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Image');
  static const ChatMessageContentType Json = ChatMessageContentType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Json');

  static const $core.List<ChatMessageContentType> values = <ChatMessageContentType> [
    Text,
    Audio,
    Image,
    Json,
  ];

  static final $core.Map<$core.int, ChatMessageContentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChatMessageContentType? valueOf($core.int value) => _byValue[value];

  const ChatMessageContentType._($core.int v, $core.String n) : super(v, n);
}

