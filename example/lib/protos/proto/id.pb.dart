///
//  Generated code. Do not modify.
//  source: protos/proto/id.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $0;

class RPCIdRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RPCIdRes', createEmptyInstance: create)
    ..aOM<$0.State>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'State', protoName: 'State', subBuilder: $0.State.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'Data', protoName: 'Data')
    ..hasRequiredFields = false
  ;

  RPCIdRes._() : super();
  factory RPCIdRes({
    $0.State? state,
    $fixnum.Int64? data,
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
  factory RPCIdRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RPCIdRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RPCIdRes clone() => RPCIdRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RPCIdRes copyWith(void Function(RPCIdRes) updates) => super.copyWith((message) => updates(message as RPCIdRes)) as RPCIdRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RPCIdRes create() => RPCIdRes._();
  RPCIdRes createEmptyInstance() => create();
  static $pb.PbList<RPCIdRes> createRepeated() => $pb.PbList<RPCIdRes>();
  @$core.pragma('dart2js:noInline')
  static RPCIdRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RPCIdRes>(create);
  static RPCIdRes? _defaultInstance;

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
  $fixnum.Int64 get data => $_getI64(1);
  @$pb.TagNumber(2)
  set data($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

