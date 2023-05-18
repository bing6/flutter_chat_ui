///
//  Generated code. Do not modify.
//  source: protos/proto/robot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class RPCBootRobotReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCBootRobotReq', createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'RobotId', protoName: 'RobotId')
    ..hasRequiredFields = false
  ;

  RPCBootRobotReq._() : super();
  factory RPCBootRobotReq({
    $fixnum.Int64? robotId,
  }) {
    final _result = create();
    if (robotId != null) {
      _result.robotId = robotId;
    }
    return _result;
  }
  factory RPCBootRobotReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCBootRobotReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCBootRobotReq clone() => RPCBootRobotReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCBootRobotReq copyWith(void Function(RPCBootRobotReq) updates) => super.copyWith((message) => updates(message as RPCBootRobotReq)) as RPCBootRobotReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCBootRobotReq create() => RPCBootRobotReq._();
  RPCBootRobotReq createEmptyInstance() => create();
  static $pb.PbList<RPCBootRobotReq> createRepeated() => $pb.PbList<RPCBootRobotReq>();
  @$core.pragma('dart2js:noInline')
  static RPCBootRobotReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCBootRobotReq>(create);
  static RPCBootRobotReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get robotId => $_getI64(0);
  @$pb.TagNumber(1)
  set robotId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRobotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRobotId() => clearField(1);
}

class RPCBootRobotRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCBootRobotRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..hasRequiredFields = false
  ;

  RPCBootRobotRes._() : super();
  factory RPCBootRobotRes({
    $0.State? state,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    return _result;
  }
  factory RPCBootRobotRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCBootRobotRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCBootRobotRes clone() => RPCBootRobotRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCBootRobotRes copyWith(void Function(RPCBootRobotRes) updates) => super.copyWith((message) => updates(message as RPCBootRobotRes)) as RPCBootRobotRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCBootRobotRes create() => RPCBootRobotRes._();
  RPCBootRobotRes createEmptyInstance() => create();
  static $pb.PbList<RPCBootRobotRes> createRepeated() => $pb.PbList<RPCBootRobotRes>();
  @$core.pragma('dart2js:noInline')
  static RPCBootRobotRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCBootRobotRes>(create);
  static RPCBootRobotRes? _defaultInstance;

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

