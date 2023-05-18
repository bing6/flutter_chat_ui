///
//  Generated code. Do not modify.
//  source: protos/proto/chat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class RobotData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RobotData', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ID', protoName: 'ID')
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

  RobotData._() : super();
  factory RobotData({
    $fixnum.Int64? iD,
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
    if (iD != null) {
      _result.iD = iD;
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
  factory RobotData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RobotData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RobotData clone() => RobotData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RobotData copyWith(void Function(RobotData) updates) => super.copyWith((message) => updates(message as RobotData)) as RobotData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RobotData create() => RobotData._();
  RobotData createEmptyInstance() => create();
  static $pb.PbList<RobotData> createRepeated() => $pb.PbList<RobotData>();
  @$core.pragma('dart2js:noInline')
  static RobotData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RobotData>(create);
  static RobotData? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get iD => $_getI64(0);
  @$pb.TagNumber(1)
  set iD($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasID() => $_has(0);
  @$pb.TagNumber(1)
  void clearID() => clearField(1);

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

class RPCNewRobotReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCNewRobotReq', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Gender', $pb.PbFieldType.O3, protoName: 'Gender')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Series', $pb.PbFieldType.O3, protoName: 'Series')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tags', protoName: 'Tags')
    ..hasRequiredFields = false
  ;

  RPCNewRobotReq._() : super();
  factory RPCNewRobotReq({
    $core.String? name,
    $core.int? gender,
    $core.int? series,
    $core.String? tags,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (gender != null) {
      _result.gender = gender;
    }
    if (series != null) {
      _result.series = series;
    }
    if (tags != null) {
      _result.tags = tags;
    }
    return _result;
  }
  factory RPCNewRobotReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCNewRobotReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCNewRobotReq clone() => RPCNewRobotReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCNewRobotReq copyWith(void Function(RPCNewRobotReq) updates) => super.copyWith((message) => updates(message as RPCNewRobotReq)) as RPCNewRobotReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCNewRobotReq create() => RPCNewRobotReq._();
  RPCNewRobotReq createEmptyInstance() => create();
  static $pb.PbList<RPCNewRobotReq> createRepeated() => $pb.PbList<RPCNewRobotReq>();
  @$core.pragma('dart2js:noInline')
  static RPCNewRobotReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCNewRobotReq>(create);
  static RPCNewRobotReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get gender => $_getIZ(1);
  @$pb.TagNumber(2)
  set gender($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGender() => $_has(1);
  @$pb.TagNumber(2)
  void clearGender() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get series => $_getIZ(2);
  @$pb.TagNumber(3)
  set series($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeries() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeries() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get tags => $_getSZ(3);
  @$pb.TagNumber(4)
  set tags($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTags() => $_has(3);
  @$pb.TagNumber(4)
  void clearTags() => clearField(4);
}

class RPCNewRobotRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCNewRobotRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..aOM<RobotData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Data', protoName: 'Data', subBuilder: RobotData.create)
    ..hasRequiredFields = false
  ;

  RPCNewRobotRes._() : super();
  factory RPCNewRobotRes({
    $0.State? state,
    RobotData? data,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory RPCNewRobotRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCNewRobotRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCNewRobotRes clone() => RPCNewRobotRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCNewRobotRes copyWith(void Function(RPCNewRobotRes) updates) => super.copyWith((message) => updates(message as RPCNewRobotRes)) as RPCNewRobotRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCNewRobotRes create() => RPCNewRobotRes._();
  RPCNewRobotRes createEmptyInstance() => create();
  static $pb.PbList<RPCNewRobotRes> createRepeated() => $pb.PbList<RPCNewRobotRes>();
  @$core.pragma('dart2js:noInline')
  static RPCNewRobotRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCNewRobotRes>(create);
  static RPCNewRobotRes? _defaultInstance;

  @$pb.TagNumber(1)
  $0.State get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($0.State v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
  @$pb.TagNumber(1)
  $0.State ensureState() => $_ensure(0);

  @$pb.TagNumber(2)
  RobotData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(RobotData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  RobotData ensureData() => $_ensure(1);
}

class RPCRobotListRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCRobotListRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..pc<RobotData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: RobotData.create)
    ..hasRequiredFields = false
  ;

  RPCRobotListRes._() : super();
  factory RPCRobotListRes({
    $0.State? state,
    $core.Iterable<RobotData>? items,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory RPCRobotListRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCRobotListRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCRobotListRes clone() => RPCRobotListRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCRobotListRes copyWith(void Function(RPCRobotListRes) updates) => super.copyWith((message) => updates(message as RPCRobotListRes)) as RPCRobotListRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCRobotListRes create() => RPCRobotListRes._();
  RPCRobotListRes createEmptyInstance() => create();
  static $pb.PbList<RPCRobotListRes> createRepeated() => $pb.PbList<RPCRobotListRes>();
  @$core.pragma('dart2js:noInline')
  static RPCRobotListRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCRobotListRes>(create);
  static RPCRobotListRes? _defaultInstance;

  @$pb.TagNumber(1)
  $0.State get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($0.State v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
  @$pb.TagNumber(1)
  $0.State ensureState() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<RobotData> get items => $_getList(1);
}

class RPCRobotMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCRobotMessageReq', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'CID', protoName: 'CID')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'From', protoName: 'From')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'To', protoName: 'To')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..hasRequiredFields = false
  ;

  RPCRobotMessageReq._() : super();
  factory RPCRobotMessageReq({
    $core.String? cID,
    $fixnum.Int64? from,
    $fixnum.Int64? to,
    $core.String? content,
  }) {
    final _result = create();
    if (cID != null) {
      _result.cID = cID;
    }
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory RPCRobotMessageReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCRobotMessageReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCRobotMessageReq clone() => RPCRobotMessageReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCRobotMessageReq copyWith(void Function(RPCRobotMessageReq) updates) => super.copyWith((message) => updates(message as RPCRobotMessageReq)) as RPCRobotMessageReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCRobotMessageReq create() => RPCRobotMessageReq._();
  RPCRobotMessageReq createEmptyInstance() => create();
  static $pb.PbList<RPCRobotMessageReq> createRepeated() => $pb.PbList<RPCRobotMessageReq>();
  @$core.pragma('dart2js:noInline')
  static RPCRobotMessageReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCRobotMessageReq>(create);
  static RPCRobotMessageReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cID => $_getSZ(0);
  @$pb.TagNumber(1)
  set cID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCID() => $_has(0);
  @$pb.TagNumber(1)
  void clearCID() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get from => $_getI64(1);
  @$pb.TagNumber(2)
  set from($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get to => $_getI64(2);
  @$pb.TagNumber(3)
  set to($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);
}

class REQChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'REQChatMessage', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Id', protoName: 'Id')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'From', protoName: 'From')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'To', protoName: 'To')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..hasRequiredFields = false
  ;

  REQChatMessage._() : super();
  factory REQChatMessage({
    $core.String? id,
    $fixnum.Int64? from,
    $fixnum.Int64? to,
    $core.String? content,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    if (content != null) {
      _result.content = content;
    }
    return _result;
  }
  factory REQChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory REQChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  REQChatMessage clone() => REQChatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  REQChatMessage copyWith(void Function(REQChatMessage) updates) => super.copyWith((message) => updates(message as REQChatMessage)) as REQChatMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static REQChatMessage create() => REQChatMessage._();
  REQChatMessage createEmptyInstance() => create();
  static $pb.PbList<REQChatMessage> createRepeated() => $pb.PbList<REQChatMessage>();
  @$core.pragma('dart2js:noInline')
  static REQChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<REQChatMessage>(create);
  static REQChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get from => $_getI64(1);
  @$pb.TagNumber(2)
  set from($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get to => $_getI64(2);
  @$pb.TagNumber(3)
  set to($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => clearField(4);
}

class RESChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RESChatMessage', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..hasRequiredFields = false
  ;

  RESChatMessage._() : super();
  factory RESChatMessage({
    $0.State? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory RESChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RESChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RESChatMessage clone() => RESChatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RESChatMessage copyWith(void Function(RESChatMessage) updates) => super.copyWith((message) => updates(message as RESChatMessage)) as RESChatMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RESChatMessage create() => RESChatMessage._();
  RESChatMessage createEmptyInstance() => create();
  static $pb.PbList<RESChatMessage> createRepeated() => $pb.PbList<RESChatMessage>();
  @$core.pragma('dart2js:noInline')
  static RESChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RESChatMessage>(create);
  static RESChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $0.State get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($0.State v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
  @$pb.TagNumber(1)
  $0.State ensureState() => $_ensure(0);
}

