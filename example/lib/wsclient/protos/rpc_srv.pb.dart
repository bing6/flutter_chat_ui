///
//  Generated code. Do not modify.
//  source: rpc_srv.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'data_info.pb.dart' as $0;

class ReqPing extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReqPing', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Timestamp', protoName: 'Timestamp')
    ..hasRequiredFields = false
  ;

  ReqPing._() : super();
  factory ReqPing({
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory ReqPing.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqPing.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqPing clone() => ReqPing()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqPing copyWith(void Function(ReqPing) updates) => super.copyWith((message) => updates(message as ReqPing)) as ReqPing; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReqPing create() => ReqPing._();
  ReqPing createEmptyInstance() => create();
  static $pb.PbList<ReqPing> createRepeated() => $pb.PbList<ReqPing>();
  @$core.pragma('dart2js:noInline')
  static ReqPing getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqPing>(create);
  static ReqPing? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
}

class ResPong extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResPong', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Timestamp', protoName: 'Timestamp')
    ..hasRequiredFields = false
  ;

  ResPong._() : super();
  factory ResPong({
    $fixnum.Int64? timestamp,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    return _result;
  }
  factory ResPong.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResPong.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResPong clone() => ResPong()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResPong copyWith(void Function(ResPong) updates) => super.copyWith((message) => updates(message as ResPong)) as ResPong; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResPong create() => ResPong._();
  ResPong createEmptyInstance() => create();
  static $pb.PbList<ResPong> createRepeated() => $pb.PbList<ResPong>();
  @$core.pragma('dart2js:noInline')
  static ResPong getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResPong>(create);
  static ResPong? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);
}

class ReqAuthentication extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReqAuthentication', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', protoName: 'Token')
    ..hasRequiredFields = false
  ;

  ReqAuthentication._() : super();
  factory ReqAuthentication({
    $core.String? token,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory ReqAuthentication.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqAuthentication.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqAuthentication clone() => ReqAuthentication()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqAuthentication copyWith(void Function(ReqAuthentication) updates) => super.copyWith((message) => updates(message as ReqAuthentication)) as ReqAuthentication; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReqAuthentication create() => ReqAuthentication._();
  ReqAuthentication createEmptyInstance() => create();
  static $pb.PbList<ReqAuthentication> createRepeated() => $pb.PbList<ReqAuthentication>();
  @$core.pragma('dart2js:noInline')
  static ReqAuthentication getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqAuthentication>(create);
  static ReqAuthentication? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class ResAuthentication extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResAuthentication', createEmptyInstance: create)
    ..aOM<$0.StateInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', subBuilder: $0.StateInfo.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountId', $pb.PbFieldType.O3, protoName: 'AccountId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidentId', $pb.PbFieldType.O3, protoName: 'ResidentId')
    ..hasRequiredFields = false
  ;

  ResAuthentication._() : super();
  factory ResAuthentication({
    $0.StateInfo? state,
    $fixnum.Int64? userId,
    $core.int? accountId,
    $core.int? residentId,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (userId != null) {
      _result.userId = userId;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (residentId != null) {
      _result.residentId = residentId;
    }
    return _result;
  }
  factory ResAuthentication.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResAuthentication.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResAuthentication clone() => ResAuthentication()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResAuthentication copyWith(void Function(ResAuthentication) updates) => super.copyWith((message) => updates(message as ResAuthentication)) as ResAuthentication; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResAuthentication create() => ResAuthentication._();
  ResAuthentication createEmptyInstance() => create();
  static $pb.PbList<ResAuthentication> createRepeated() => $pb.PbList<ResAuthentication>();
  @$core.pragma('dart2js:noInline')
  static ResAuthentication getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResAuthentication>(create);
  static ResAuthentication? _defaultInstance;

  @$pb.TagNumber(1)
  $0.StateInfo get state => $_getN(0);
  @$pb.TagNumber(1)
  set state($0.StateInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);
  @$pb.TagNumber(1)
  $0.StateInfo ensureState() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get accountId => $_getIZ(2);
  @$pb.TagNumber(3)
  set accountId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get residentId => $_getIZ(3);
  @$pb.TagNumber(4)
  set residentId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasResidentId() => $_has(3);
  @$pb.TagNumber(4)
  void clearResidentId() => clearField(4);
}

class ReqNewRobot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReqNewRobot', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Name', protoName: 'Name')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Gender', $pb.PbFieldType.O3, protoName: 'Gender')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Series', $pb.PbFieldType.O3, protoName: 'Series')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Tags', protoName: 'Tags')
    ..hasRequiredFields = false
  ;

  ReqNewRobot._() : super();
  factory ReqNewRobot({
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
  factory ReqNewRobot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqNewRobot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqNewRobot clone() => ReqNewRobot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqNewRobot copyWith(void Function(ReqNewRobot) updates) => super.copyWith((message) => updates(message as ReqNewRobot)) as ReqNewRobot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReqNewRobot create() => ReqNewRobot._();
  ReqNewRobot createEmptyInstance() => create();
  static $pb.PbList<ReqNewRobot> createRepeated() => $pb.PbList<ReqNewRobot>();
  @$core.pragma('dart2js:noInline')
  static ReqNewRobot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqNewRobot>(create);
  static ReqNewRobot? _defaultInstance;

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

class ResNewRobot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResNewRobot', createEmptyInstance: create)
    ..aOM<$0.RobotInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Data', protoName: 'Data', subBuilder: $0.RobotInfo.create)
    ..hasRequiredFields = false
  ;

  ResNewRobot._() : super();
  factory ResNewRobot({
    $0.RobotInfo? data,
  }) {
    final _result = create();
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory ResNewRobot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResNewRobot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResNewRobot clone() => ResNewRobot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResNewRobot copyWith(void Function(ResNewRobot) updates) => super.copyWith((message) => updates(message as ResNewRobot)) as ResNewRobot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResNewRobot create() => ResNewRobot._();
  ResNewRobot createEmptyInstance() => create();
  static $pb.PbList<ResNewRobot> createRepeated() => $pb.PbList<ResNewRobot>();
  @$core.pragma('dart2js:noInline')
  static ResNewRobot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResNewRobot>(create);
  static ResNewRobot? _defaultInstance;

  @$pb.TagNumber(2)
  $0.RobotInfo get data => $_getN(0);
  @$pb.TagNumber(2)
  set data($0.RobotInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  $0.RobotInfo ensureData() => $_ensure(0);
}

class ReqRobotList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReqRobotList', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..hasRequiredFields = false
  ;

  ReqRobotList._() : super();
  factory ReqRobotList({
    $fixnum.Int64? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory ReqRobotList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqRobotList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqRobotList clone() => ReqRobotList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqRobotList copyWith(void Function(ReqRobotList) updates) => super.copyWith((message) => updates(message as ReqRobotList)) as ReqRobotList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReqRobotList create() => ReqRobotList._();
  ReqRobotList createEmptyInstance() => create();
  static $pb.PbList<ReqRobotList> createRepeated() => $pb.PbList<ReqRobotList>();
  @$core.pragma('dart2js:noInline')
  static ReqRobotList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqRobotList>(create);
  static ReqRobotList? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class ResRobotList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResRobotList', createEmptyInstance: create)
    ..pc<$0.RobotInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Items', $pb.PbFieldType.PM, protoName: 'Items', subBuilder: $0.RobotInfo.create)
    ..hasRequiredFields = false
  ;

  ResRobotList._() : super();
  factory ResRobotList({
    $core.Iterable<$0.RobotInfo>? items,
  }) {
    final _result = create();
    if (items != null) {
      _result.items.addAll(items);
    }
    return _result;
  }
  factory ResRobotList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResRobotList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResRobotList clone() => ResRobotList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResRobotList copyWith(void Function(ResRobotList) updates) => super.copyWith((message) => updates(message as ResRobotList)) as ResRobotList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResRobotList create() => ResRobotList._();
  ResRobotList createEmptyInstance() => create();
  static $pb.PbList<ResRobotList> createRepeated() => $pb.PbList<ResRobotList>();
  @$core.pragma('dart2js:noInline')
  static ResRobotList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResRobotList>(create);
  static ResRobotList? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$0.RobotInfo> get items => $_getList(0);
}

class ReqChatTextMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReqChatTextMessage', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'MId', protoName: 'MId')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'From', protoName: 'From')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'To', protoName: 'To')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Content', protoName: 'Content')
    ..hasRequiredFields = false
  ;

  ReqChatTextMessage._() : super();
  factory ReqChatTextMessage({
    $core.String? mId,
    $fixnum.Int64? from,
    $fixnum.Int64? to,
    $core.String? content,
  }) {
    final _result = create();
    if (mId != null) {
      _result.mId = mId;
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
  factory ReqChatTextMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReqChatTextMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReqChatTextMessage clone() => ReqChatTextMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReqChatTextMessage copyWith(void Function(ReqChatTextMessage) updates) => super.copyWith((message) => updates(message as ReqChatTextMessage)) as ReqChatTextMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReqChatTextMessage create() => ReqChatTextMessage._();
  ReqChatTextMessage createEmptyInstance() => create();
  static $pb.PbList<ReqChatTextMessage> createRepeated() => $pb.PbList<ReqChatTextMessage>();
  @$core.pragma('dart2js:noInline')
  static ReqChatTextMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReqChatTextMessage>(create);
  static ReqChatTextMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mId => $_getSZ(0);
  @$pb.TagNumber(1)
  set mId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMId() => clearField(1);

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

class ResChatMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResChatMessage', createEmptyInstance: create)
    ..aOM<$0.ChatMessageInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payload', subBuilder: $0.ChatMessageInfo.create)
    ..hasRequiredFields = false
  ;

  ResChatMessage._() : super();
  factory ResChatMessage({
    $0.ChatMessageInfo? payload,
  }) {
    final _result = create();
    if (payload != null) {
      _result.payload = payload;
    }
    return _result;
  }
  factory ResChatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResChatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResChatMessage clone() => ResChatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResChatMessage copyWith(void Function(ResChatMessage) updates) => super.copyWith((message) => updates(message as ResChatMessage)) as ResChatMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResChatMessage create() => ResChatMessage._();
  ResChatMessage createEmptyInstance() => create();
  static $pb.PbList<ResChatMessage> createRepeated() => $pb.PbList<ResChatMessage>();
  @$core.pragma('dart2js:noInline')
  static ResChatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResChatMessage>(create);
  static ResChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ChatMessageInfo get payload => $_getN(0);
  @$pb.TagNumber(1)
  set payload($0.ChatMessageInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayload() => clearField(1);
  @$pb.TagNumber(1)
  $0.ChatMessageInfo ensurePayload() => $_ensure(0);
}

