///
//  Generated code. Do not modify.
//  source: protos/proto/chat.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use robotDataDescriptor instead')
const RobotData$json = const {
  '1': 'RobotData',
  '2': const [
    const {'1': 'ID', '3': 1, '4': 1, '5': 3, '10': 'ID'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Character', '3': 4, '4': 1, '5': 9, '10': 'Character'},
    const {'1': 'Avatar', '3': 5, '4': 1, '5': 9, '10': 'Avatar'},
    const {'1': 'Gender', '3': 6, '4': 1, '5': 5, '10': 'Gender'},
    const {'1': 'Tags', '3': 7, '4': 1, '5': 9, '10': 'Tags'},
    const {'1': 'IsDefault', '3': 8, '4': 1, '5': 5, '10': 'IsDefault'},
    const {'1': 'Series', '3': 9, '4': 1, '5': 5, '10': 'Series'},
    const {'1': 'UpdateAt', '3': 10, '4': 1, '5': 3, '10': 'UpdateAt'},
    const {'1': 'CreateAt', '3': 11, '4': 1, '5': 3, '10': 'CreateAt'},
  ],
};

/// Descriptor for `RobotData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List robotDataDescriptor = $convert.base64Decode('CglSb2JvdERhdGESDgoCSUQYASABKANSAklEEhIKBE5hbWUYAiABKAlSBE5hbWUSHAoJQ2hhcmFjdGVyGAQgASgJUglDaGFyYWN0ZXISFgoGQXZhdGFyGAUgASgJUgZBdmF0YXISFgoGR2VuZGVyGAYgASgFUgZHZW5kZXISEgoEVGFncxgHIAEoCVIEVGFncxIcCglJc0RlZmF1bHQYCCABKAVSCUlzRGVmYXVsdBIWCgZTZXJpZXMYCSABKAVSBlNlcmllcxIaCghVcGRhdGVBdBgKIAEoA1IIVXBkYXRlQXQSGgoIQ3JlYXRlQXQYCyABKANSCENyZWF0ZUF0');
@$core.Deprecated('Use rPCNewRobotReqDescriptor instead')
const RPCNewRobotReq$json = const {
  '1': 'RPCNewRobotReq',
  '2': const [
    const {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Gender', '3': 2, '4': 1, '5': 5, '10': 'Gender'},
    const {'1': 'Series', '3': 3, '4': 1, '5': 5, '10': 'Series'},
    const {'1': 'Tags', '3': 4, '4': 1, '5': 9, '10': 'Tags'},
  ],
};

/// Descriptor for `RPCNewRobotReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCNewRobotReqDescriptor = $convert.base64Decode('Cg5SUENOZXdSb2JvdFJlcRISCgROYW1lGAEgASgJUgROYW1lEhYKBkdlbmRlchgCIAEoBVIGR2VuZGVyEhYKBlNlcmllcxgDIAEoBVIGU2VyaWVzEhIKBFRhZ3MYBCABKAlSBFRhZ3M=');
@$core.Deprecated('Use rPCNewRobotResDescriptor instead')
const RPCNewRobotRes$json = const {
  '1': 'RPCNewRobotRes',
  '2': const [
    const {'1': 'State', '3': 1, '4': 1, '5': 11, '6': '.State', '10': 'State'},
    const {'1': 'Data', '3': 2, '4': 1, '5': 11, '6': '.RobotData', '10': 'Data'},
  ],
};

/// Descriptor for `RPCNewRobotRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCNewRobotResDescriptor = $convert.base64Decode('Cg5SUENOZXdSb2JvdFJlcxIcCgVTdGF0ZRgBIAEoCzIGLlN0YXRlUgVTdGF0ZRIeCgREYXRhGAIgASgLMgouUm9ib3REYXRhUgREYXRh');
@$core.Deprecated('Use rPCRobotListResDescriptor instead')
const RPCRobotListRes$json = const {
  '1': 'RPCRobotListRes',
  '2': const [
    const {'1': 'State', '3': 1, '4': 1, '5': 11, '6': '.State', '10': 'State'},
    const {'1': 'Items', '3': 2, '4': 3, '5': 11, '6': '.RobotData', '10': 'Items'},
  ],
};

/// Descriptor for `RPCRobotListRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCRobotListResDescriptor = $convert.base64Decode('Cg9SUENSb2JvdExpc3RSZXMSHAoFU3RhdGUYASABKAsyBi5TdGF0ZVIFU3RhdGUSIAoFSXRlbXMYAiADKAsyCi5Sb2JvdERhdGFSBUl0ZW1z');
@$core.Deprecated('Use rPCChatMessageReqDescriptor instead')
const RPCChatMessageReq$json = const {
  '1': 'RPCChatMessageReq',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    const {'1': 'From', '3': 2, '4': 1, '5': 3, '10': 'From'},
    const {'1': 'To', '3': 3, '4': 1, '5': 3, '10': 'To'},
    const {'1': 'ContentData', '3': 4, '4': 1, '5': 9, '10': 'ContentData'},
    const {'1': 'ContentType', '3': 5, '4': 1, '5': 5, '10': 'ContentType'},
  ],
};

/// Descriptor for `RPCChatMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCChatMessageReqDescriptor = $convert.base64Decode('ChFSUENDaGF0TWVzc2FnZVJlcRIOCgJJZBgBIAEoCVICSWQSEgoERnJvbRgCIAEoA1IERnJvbRIOCgJUbxgDIAEoA1ICVG8SIAoLQ29udGVudERhdGEYBCABKAlSC0NvbnRlbnREYXRhEiAKC0NvbnRlbnRUeXBlGAUgASgFUgtDb250ZW50VHlwZQ==');
@$core.Deprecated('Use rPCChatMessageResDescriptor instead')
const RPCChatMessageRes$json = const {
  '1': 'RPCChatMessageRes',
  '2': const [
    const {'1': 'State', '3': 1, '4': 1, '5': 11, '6': '.State', '10': 'State'},
  ],
};

/// Descriptor for `RPCChatMessageRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCChatMessageResDescriptor = $convert.base64Decode('ChFSUENDaGF0TWVzc2FnZVJlcxIcCgVTdGF0ZRgBIAEoCzIGLlN0YXRlUgVTdGF0ZQ==');
@$core.Deprecated('Use notifyChatMessageDescriptor instead')
const NotifyChatMessage$json = const {
  '1': 'NotifyChatMessage',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    const {'1': 'reply', '3': 2, '4': 1, '5': 9, '10': 'reply'},
    const {'1': 'From', '3': 3, '4': 1, '5': 3, '10': 'From'},
    const {'1': 'To', '3': 4, '4': 1, '5': 3, '10': 'To'},
    const {'1': 'ContentData', '3': 5, '4': 1, '5': 9, '10': 'ContentData'},
    const {'1': 'ContentType', '3': 6, '4': 1, '5': 5, '10': 'ContentType'},
  ],
};

/// Descriptor for `NotifyChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notifyChatMessageDescriptor = $convert.base64Decode('ChFOb3RpZnlDaGF0TWVzc2FnZRIOCgJJZBgBIAEoCVICSWQSFAoFcmVwbHkYAiABKAlSBXJlcGx5EhIKBEZyb20YAyABKANSBEZyb20SDgoCVG8YBCABKANSAlRvEiAKC0NvbnRlbnREYXRhGAUgASgJUgtDb250ZW50RGF0YRIgCgtDb250ZW50VHlwZRgGIAEoBVILQ29udGVudFR5cGU=');
