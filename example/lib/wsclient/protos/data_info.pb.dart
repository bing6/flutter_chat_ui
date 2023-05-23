///
//  Generated code. Do not modify.
//  source: data_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'data_info.pbenum.dart';

export 'data_info.pbenum.dart';

class StateInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StateInfo', createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Code', $pb.PbFieldType.O3, protoName: 'Code')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Msg', protoName: 'Msg')
    ..hasRequiredFields = false
  ;

  StateInfo._() : super();
  factory StateInfo({
    $core.int? code,
    $core.String? msg,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory StateInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StateInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StateInfo clone() => StateInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StateInfo copyWith(void Function(StateInfo) updates) => super.copyWith((message) => updates(message as StateInfo)) as StateInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StateInfo create() => StateInfo._();
  StateInfo createEmptyInstance() => create();
  static $pb.PbList<StateInfo> createRepeated() => $pb.PbList<StateInfo>();
  @$core.pragma('dart2js:noInline')
  static StateInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StateInfo>(create);
  static StateInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class RobotInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RobotInfo', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', protoName: 'Id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Character', protoName: 'Character')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Avatar', protoName: 'Avatar')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Gender', $pb.PbFieldType.O3, protoName: 'Gender')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tags', protoName: 'Tags')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsDefault', $pb.PbFieldType.O3, protoName: 'IsDefault')
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Series', $pb.PbFieldType.O3, protoName: 'Series')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UpdateAt', protoName: 'UpdateAt')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CreateAt', protoName: 'CreateAt')
    ..hasRequiredFields = false
  ;

  RobotInfo._() : super();
  factory RobotInfo({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? character,
    $core.String? avatar,
    $core.int? gender,
    $core.String? tags,
    $core.int? isDefault,
    $core.int? series,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? createAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (character != null) {
      _result.character = character;
    }
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (tags != null) {
      _result.tags = tags;
    }
    if (isDefault != null) {
      _result.isDefault = isDefault;
    }
    if (series != null) {
      _result.series = series;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (createAt != null) {
      _result.createAt = createAt;
    }
    return _result;
  }
  factory RobotInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RobotInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RobotInfo clone() => RobotInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RobotInfo copyWith(void Function(RobotInfo) updates) => super.copyWith((message) => updates(message as RobotInfo)) as RobotInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RobotInfo create() => RobotInfo._();
  RobotInfo createEmptyInstance() => create();
  static $pb.PbList<RobotInfo> createRepeated() => $pb.PbList<RobotInfo>();
  @$core.pragma('dart2js:noInline')
  static RobotInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RobotInfo>(create);
  static RobotInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get character => $_getSZ(2);
  @$pb.TagNumber(4)
  set character($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasCharacter() => $_has(2);
  @$pb.TagNumber(4)
  void clearCharacter() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get avatar => $_getSZ(3);
  @$pb.TagNumber(5)
  set avatar($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvatar() => $_has(3);
  @$pb.TagNumber(5)
  void clearAvatar() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get gender => $_getIZ(4);
  @$pb.TagNumber(6)
  set gender($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasGender() => $_has(4);
  @$pb.TagNumber(6)
  void clearGender() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get tags => $_getSZ(5);
  @$pb.TagNumber(7)
  set tags($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasTags() => $_has(5);
  @$pb.TagNumber(7)
  void clearTags() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get isDefault => $_getIZ(6);
  @$pb.TagNumber(8)
  set isDefault($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasIsDefault() => $_has(6);
  @$pb.TagNumber(8)
  void clearIsDefault() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get series => $_getIZ(7);
  @$pb.TagNumber(9)
  set series($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasSeries() => $_has(7);
  @$pb.TagNumber(9)
  void clearSeries() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get updateAt => $_getI64(8);
  @$pb.TagNumber(10)
  set updateAt($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasUpdateAt() => $_has(8);
  @$pb.TagNumber(10)
  void clearUpdateAt() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get createAt => $_getI64(9);
  @$pb.TagNumber(11)
  set createAt($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreateAt() => $_has(9);
  @$pb.TagNumber(11)
  void clearCreateAt() => clearField(11);
}

class ChatMessageInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChatMessageInfo', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MId', protoName: 'MId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reply')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'From', protoName: 'From')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'To', protoName: 'To')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ContentData', protoName: 'ContentData')
    ..e<ChatMessageContentType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ContentType', $pb.PbFieldType.OE, protoName: 'ContentType', defaultOrMaker: ChatMessageContentType.Text, valueOf: ChatMessageContentType.valueOf, enumValues: ChatMessageContentType.values)
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UpdateAt', protoName: 'UpdateAt')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CreateAt', protoName: 'CreateAt')
    ..hasRequiredFields = false
  ;

  ChatMessageInfo._() : super();
  factory ChatMessageInfo({
    $core.String? mId,
    $core.String? reply,
    $fixnum.Int64? from,
    $fixnum.Int64? to,
    $core.String? contentData,
    ChatMessageContentType? contentType,
    $fixnum.Int64? updateAt,
    $fixnum.Int64? createAt,
  }) {
    final _result = create();
    if (mId != null) {
      _result.mId = mId;
    }
    if (reply != null) {
      _result.reply = reply;
    }
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (contentData != null) {
      _result.contentData = contentData;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (updateAt != null) {
      _result.updateAt = updateAt;
    }
    if (createAt != null) {
      _result.createAt = createAt;
    }
    return _result;
  }
  factory ChatMessageInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChatMessageInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChatMessageInfo clone() => ChatMessageInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChatMessageInfo copyWith(void Function(ChatMessageInfo) updates) => super.copyWith((message) => updates(message as ChatMessageInfo)) as ChatMessageInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChatMessageInfo create() => ChatMessageInfo._();
  ChatMessageInfo createEmptyInstance() => create();
  static $pb.PbList<ChatMessageInfo> createRepeated() => $pb.PbList<ChatMessageInfo>();
  @$core.pragma('dart2js:noInline')
  static ChatMessageInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatMessageInfo>(create);
  static ChatMessageInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reply => $_getSZ(1);
  @$pb.TagNumber(2)
  set reply($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReply() => $_has(1);
  @$pb.TagNumber(2)
  void clearReply() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get from => $_getI64(2);
  @$pb.TagNumber(3)
  set from($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrom() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get to => $_getI64(3);
  @$pb.TagNumber(4)
  set to($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearTo() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get contentData => $_getSZ(4);
  @$pb.TagNumber(5)
  set contentData($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContentData() => $_has(4);
  @$pb.TagNumber(5)
  void clearContentData() => clearField(5);

  @$pb.TagNumber(6)
  ChatMessageContentType get contentType => $_getN(5);
  @$pb.TagNumber(6)
  set contentType(ChatMessageContentType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasContentType() => $_has(5);
  @$pb.TagNumber(6)
  void clearContentType() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get updateAt => $_getI64(6);
  @$pb.TagNumber(7)
  set updateAt($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUpdateAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearUpdateAt() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createAt => $_getI64(7);
  @$pb.TagNumber(8)
  set createAt($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreateAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreateAt() => clearField(8);
}

