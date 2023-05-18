///
//  Generated code. Do not modify.
//  source: protos/proto/hall.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class RPCOnlineReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCOnlineReq', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', protoName: 'Token')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IP', protoName: 'IP')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Platform', protoName: 'Platform')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Version', protoName: 'Version')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'BuildNumber', protoName: 'BuildNumber')
    ..hasRequiredFields = false
  ;

  RPCOnlineReq._() : super();
  factory RPCOnlineReq({
    $core.String? token,
    $core.String? iP,
    $core.String? platform,
    $core.String? version,
    $core.String? buildNumber,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (iP != null) {
      _result.iP = iP;
    }
    if (platform != null) {
      _result.platform = platform;
    }
    if (version != null) {
      _result.version = version;
    }
    if (buildNumber != null) {
      _result.buildNumber = buildNumber;
    }
    return _result;
  }
  factory RPCOnlineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCOnlineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCOnlineReq clone() => RPCOnlineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCOnlineReq copyWith(void Function(RPCOnlineReq) updates) => super.copyWith((message) => updates(message as RPCOnlineReq)) as RPCOnlineReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCOnlineReq create() => RPCOnlineReq._();
  RPCOnlineReq createEmptyInstance() => create();
  static $pb.PbList<RPCOnlineReq> createRepeated() => $pb.PbList<RPCOnlineReq>();
  @$core.pragma('dart2js:noInline')
  static RPCOnlineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCOnlineReq>(create);
  static RPCOnlineReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get iP => $_getSZ(1);
  @$pb.TagNumber(2)
  set iP($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIP() => $_has(1);
  @$pb.TagNumber(2)
  void clearIP() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get platform => $_getSZ(2);
  @$pb.TagNumber(3)
  set platform($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlatform() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlatform() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get buildNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set buildNumber($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBuildNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearBuildNumber() => clearField(5);
}

class RPCOnlineRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCOnlineRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..hasRequiredFields = false
  ;

  RPCOnlineRes._() : super();
  factory RPCOnlineRes({
    $0.State? state,
    $fixnum.Int64? userID,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (userID != null) {
      _result.userID = userID;
    }
    return _result;
  }
  factory RPCOnlineRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCOnlineRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCOnlineRes clone() => RPCOnlineRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCOnlineRes copyWith(void Function(RPCOnlineRes) updates) => super.copyWith((message) => updates(message as RPCOnlineRes)) as RPCOnlineRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCOnlineRes create() => RPCOnlineRes._();
  RPCOnlineRes createEmptyInstance() => create();
  static $pb.PbList<RPCOnlineRes> createRepeated() => $pb.PbList<RPCOnlineRes>();
  @$core.pragma('dart2js:noInline')
  static RPCOnlineRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCOnlineRes>(create);
  static RPCOnlineRes? _defaultInstance;

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
  $fixnum.Int64 get userID => $_getI64(1);
  @$pb.TagNumber(2)
  set userID($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUserID() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserID() => clearField(2);
}

class RPCOfflineReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCOfflineReq', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserID', protoName: 'UserID')
    ..hasRequiredFields = false
  ;

  RPCOfflineReq._() : super();
  factory RPCOfflineReq({
    $fixnum.Int64? userID,
  }) {
    final _result = create();
    if (userID != null) {
      _result.userID = userID;
    }
    return _result;
  }
  factory RPCOfflineReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCOfflineReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCOfflineReq clone() => RPCOfflineReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCOfflineReq copyWith(void Function(RPCOfflineReq) updates) => super.copyWith((message) => updates(message as RPCOfflineReq)) as RPCOfflineReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCOfflineReq create() => RPCOfflineReq._();
  RPCOfflineReq createEmptyInstance() => create();
  static $pb.PbList<RPCOfflineReq> createRepeated() => $pb.PbList<RPCOfflineReq>();
  @$core.pragma('dart2js:noInline')
  static RPCOfflineReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCOfflineReq>(create);
  static RPCOfflineReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userID => $_getI64(0);
  @$pb.TagNumber(1)
  set userID($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserID() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserID() => clearField(1);
}

class RPCOfflineRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCOfflineRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..hasRequiredFields = false
  ;

  RPCOfflineRes._() : super();
  factory RPCOfflineRes({
    $0.State? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory RPCOfflineRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCOfflineRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCOfflineRes clone() => RPCOfflineRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCOfflineRes copyWith(void Function(RPCOfflineRes) updates) => super.copyWith((message) => updates(message as RPCOfflineRes)) as RPCOfflineRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCOfflineRes create() => RPCOfflineRes._();
  RPCOfflineRes createEmptyInstance() => create();
  static $pb.PbList<RPCOfflineRes> createRepeated() => $pb.PbList<RPCOfflineRes>();
  @$core.pragma('dart2js:noInline')
  static RPCOfflineRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCOfflineRes>(create);
  static RPCOfflineRes? _defaultInstance;

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

