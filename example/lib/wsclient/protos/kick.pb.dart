///
//  Generated code. Do not modify.
//  source: kick.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class KickMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KickMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  KickMsg._() : super();
  factory KickMsg({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory KickMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickMsg clone() => KickMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickMsg copyWith(void Function(KickMsg) updates) => super.copyWith((message) => updates(message as KickMsg)) as KickMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KickMsg create() => KickMsg._();
  KickMsg createEmptyInstance() => create();
  static $pb.PbList<KickMsg> createRepeated() => $pb.PbList<KickMsg>();
  @$core.pragma('dart2js:noInline')
  static KickMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickMsg>(create);
  static KickMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class KickAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KickAnswer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'protos'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'kicked')
    ..hasRequiredFields = false
  ;

  KickAnswer._() : super();
  factory KickAnswer({
    $core.bool? kicked,
  }) {
    final _result = create();
    if (kicked != null) {
      _result.kicked = kicked;
    }
    return _result;
  }
  factory KickAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KickAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KickAnswer clone() => KickAnswer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KickAnswer copyWith(void Function(KickAnswer) updates) => super.copyWith((message) => updates(message as KickAnswer)) as KickAnswer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KickAnswer create() => KickAnswer._();
  KickAnswer createEmptyInstance() => create();
  static $pb.PbList<KickAnswer> createRepeated() => $pb.PbList<KickAnswer>();
  @$core.pragma('dart2js:noInline')
  static KickAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KickAnswer>(create);
  static KickAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get kicked => $_getBF(0);
  @$pb.TagNumber(1)
  set kicked($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKicked() => $_has(0);
  @$pb.TagNumber(1)
  void clearKicked() => clearField(1);
}

