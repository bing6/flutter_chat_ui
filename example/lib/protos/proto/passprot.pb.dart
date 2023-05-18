///
//  Generated code. Do not modify.
//  source: protos/proto/passprot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class RPCAuthenticationReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCAuthenticationReq', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Token', protoName: 'Token')
    ..hasRequiredFields = false
  ;

  RPCAuthenticationReq._() : super();
  factory RPCAuthenticationReq({
    $core.String? token,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    return _result;
  }
  factory RPCAuthenticationReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCAuthenticationReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCAuthenticationReq clone() => RPCAuthenticationReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCAuthenticationReq copyWith(void Function(RPCAuthenticationReq) updates) => super.copyWith((message) => updates(message as RPCAuthenticationReq)) as RPCAuthenticationReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCAuthenticationReq create() => RPCAuthenticationReq._();
  RPCAuthenticationReq createEmptyInstance() => create();
  static $pb.PbList<RPCAuthenticationReq> createRepeated() => $pb.PbList<RPCAuthenticationReq>();
  @$core.pragma('dart2js:noInline')
  static RPCAuthenticationReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCAuthenticationReq>(create);
  static RPCAuthenticationReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class RPCAuthenticationRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCAuthenticationRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountId', $pb.PbFieldType.O3, protoName: 'AccountId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidentId', $pb.PbFieldType.O3, protoName: 'ResidentId')
    ..hasRequiredFields = false
  ;

  RPCAuthenticationRes._() : super();
  factory RPCAuthenticationRes({
    $0.State? state,
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
  factory RPCAuthenticationRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCAuthenticationRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCAuthenticationRes clone() => RPCAuthenticationRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCAuthenticationRes copyWith(void Function(RPCAuthenticationRes) updates) => super.copyWith((message) => updates(message as RPCAuthenticationRes)) as RPCAuthenticationRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCAuthenticationRes create() => RPCAuthenticationRes._();
  RPCAuthenticationRes createEmptyInstance() => create();
  static $pb.PbList<RPCAuthenticationRes> createRepeated() => $pb.PbList<RPCAuthenticationRes>();
  @$core.pragma('dart2js:noInline')
  static RPCAuthenticationRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCAuthenticationRes>(create);
  static RPCAuthenticationRes? _defaultInstance;

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

class RPCLoginReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCLoginReq', createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Mobile', protoName: 'Mobile')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Country', protoName: 'Country')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Mode', $pb.PbFieldType.O3, protoName: 'Mode')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Password', protoName: 'Password')
    ..hasRequiredFields = false
  ;

  RPCLoginReq._() : super();
  factory RPCLoginReq({
    $core.String? mobile,
    $core.String? country,
    $core.int? mode,
    $core.String? password,
  }) {
    final _result = create();
    if (mobile != null) {
      _result.mobile = mobile;
    }
    if (country != null) {
      _result.country = country;
    }
    if (mode != null) {
      _result.mode = mode;
    }
    if (password != null) {
      _result.password = password;
    }
    return _result;
  }
  factory RPCLoginReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCLoginReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCLoginReq clone() => RPCLoginReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCLoginReq copyWith(void Function(RPCLoginReq) updates) => super.copyWith((message) => updates(message as RPCLoginReq)) as RPCLoginReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCLoginReq create() => RPCLoginReq._();
  RPCLoginReq createEmptyInstance() => create();
  static $pb.PbList<RPCLoginReq> createRepeated() => $pb.PbList<RPCLoginReq>();
  @$core.pragma('dart2js:noInline')
  static RPCLoginReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCLoginReq>(create);
  static RPCLoginReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mobile => $_getSZ(0);
  @$pb.TagNumber(1)
  set mobile($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMobile() => $_has(0);
  @$pb.TagNumber(1)
  void clearMobile() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get country => $_getSZ(1);
  @$pb.TagNumber(2)
  set country($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountry() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountry() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get mode => $_getIZ(2);
  @$pb.TagNumber(3)
  set mode($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);
}

class RPCLoginRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCLoginRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'UserId', protoName: 'UserId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccountId', $pb.PbFieldType.O3, protoName: 'AccountId')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ResidentId', $pb.PbFieldType.O3, protoName: 'ResidentId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AccessToken', protoName: 'AccessToken')
    ..hasRequiredFields = false
  ;

  RPCLoginRes._() : super();
  factory RPCLoginRes({
    $0.State? state,
    $fixnum.Int64? userId,
    $core.int? accountId,
    $core.int? residentId,
    $core.String? accessToken,
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
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory RPCLoginRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCLoginRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCLoginRes clone() => RPCLoginRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCLoginRes copyWith(void Function(RPCLoginRes) updates) => super.copyWith((message) => updates(message as RPCLoginRes)) as RPCLoginRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCLoginRes create() => RPCLoginRes._();
  RPCLoginRes createEmptyInstance() => create();
  static $pb.PbList<RPCLoginRes> createRepeated() => $pb.PbList<RPCLoginRes>();
  @$core.pragma('dart2js:noInline')
  static RPCLoginRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCLoginRes>(create);
  static RPCLoginRes? _defaultInstance;

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

  @$pb.TagNumber(5)
  $core.String get accessToken => $_getSZ(4);
  @$pb.TagNumber(5)
  set accessToken($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccessToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccessToken() => clearField(5);
}

