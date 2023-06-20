///
//  Generated code. Do not modify.
//  source: data_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use routeTypeDescriptor instead')
const RouteType$json = const {
  '1': 'RouteType',
  '2': const [
    const {'1': 'Default', '2': 0},
  ],
};

/// Descriptor for `RouteType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List routeTypeDescriptor = $convert.base64Decode('CglSb3V0ZVR5cGUSCwoHRGVmYXVsdBAA');
@$core.Deprecated('Use chatMessageContentTypeDescriptor instead')
const ChatMessageContentType$json = const {
  '1': 'ChatMessageContentType',
  '2': const [
    const {'1': 'Text', '2': 0},
    const {'1': 'Audio', '2': 1},
    const {'1': 'Image', '2': 2},
    const {'1': 'Json', '2': 3},
  ],
};

/// Descriptor for `ChatMessageContentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List chatMessageContentTypeDescriptor = $convert.base64Decode('ChZDaGF0TWVzc2FnZUNvbnRlbnRUeXBlEggKBFRleHQQABIJCgVBdWRpbxABEgkKBUltYWdlEAISCAoESnNvbhAD');
@$core.Deprecated('Use stateInfoDescriptor instead')
const StateInfo$json = const {
  '1': 'StateInfo',
  '2': const [
    const {'1': 'Code', '3': 1, '4': 1, '5': 5, '10': 'Code'},
    const {'1': 'Msg', '3': 2, '4': 1, '5': 9, '10': 'Msg'},
  ],
};

/// Descriptor for `StateInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stateInfoDescriptor = $convert.base64Decode('CglTdGF0ZUluZm8SEgoEQ29kZRgBIAEoBVIEQ29kZRIQCgNNc2cYAiABKAlSA01zZw==');
@$core.Deprecated('Use robotInfoDescriptor instead')
const RobotInfo$json = const {
  '1': 'RobotInfo',
  '2': const [
    const {'1': 'Id', '3': 1, '4': 1, '5': 3, '10': 'Id'},
    const {'1': 'Name', '3': 2, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Character', '3': 4, '4': 1, '5': 9, '10': 'Character'},
    const {'1': 'Avatar', '3': 5, '4': 1, '5': 9, '10': 'Avatar'},
    const {'1': 'Gender', '3': 6, '4': 1, '5': 5, '10': 'Gender'},
    const {'1': 'Tags', '3': 7, '4': 1, '5': 9, '10': 'Tags'},
    const {'1': 'IsDefault', '3': 8, '4': 1, '5': 5, '10': 'IsDefault'},
    const {'1': 'Series', '3': 9, '4': 1, '5': 5, '10': 'Series'},
    const {'1': 'UpdateAt', '3': 10, '4': 1, '5': 3, '10': 'UpdateAt'},
    const {'1': 'CreateAt', '3': 11, '4': 1, '5': 3, '10': 'CreateAt'},
    const {'1': 'LinkId', '3': 12, '4': 1, '5': 5, '10': 'LinkId'},
  ],
};

/// Descriptor for `RobotInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List robotInfoDescriptor = $convert.base64Decode('CglSb2JvdEluZm8SDgoCSWQYASABKANSAklkEhIKBE5hbWUYAiABKAlSBE5hbWUSHAoJQ2hhcmFjdGVyGAQgASgJUglDaGFyYWN0ZXISFgoGQXZhdGFyGAUgASgJUgZBdmF0YXISFgoGR2VuZGVyGAYgASgFUgZHZW5kZXISEgoEVGFncxgHIAEoCVIEVGFncxIcCglJc0RlZmF1bHQYCCABKAVSCUlzRGVmYXVsdBIWCgZTZXJpZXMYCSABKAVSBlNlcmllcxIaCghVcGRhdGVBdBgKIAEoA1IIVXBkYXRlQXQSGgoIQ3JlYXRlQXQYCyABKANSCENyZWF0ZUF0EhYKBkxpbmtJZBgMIAEoBVIGTGlua0lk');
@$core.Deprecated('Use chatMessageInfoDescriptor instead')
const ChatMessageInfo$json = const {
  '1': 'ChatMessageInfo',
  '2': const [
    const {'1': 'MId', '3': 1, '4': 1, '5': 9, '10': 'MId'},
    const {'1': 'reply', '3': 2, '4': 1, '5': 9, '10': 'reply'},
    const {'1': 'From', '3': 3, '4': 1, '5': 3, '10': 'From'},
    const {'1': 'To', '3': 4, '4': 1, '5': 3, '10': 'To'},
    const {'1': 'ContentData', '3': 5, '4': 1, '5': 9, '10': 'ContentData'},
    const {'1': 'ContentType', '3': 6, '4': 1, '5': 14, '6': '.ChatMessageContentType', '10': 'ContentType'},
    const {'1': 'UpdateAt', '3': 7, '4': 1, '5': 3, '10': 'UpdateAt'},
    const {'1': 'CreateAt', '3': 8, '4': 1, '5': 3, '10': 'CreateAt'},
    const {'1': 'MessageType', '3': 9, '4': 1, '5': 5, '10': 'MessageType'},
    const {'1': 'metadata', '3': 10, '4': 3, '5': 11, '6': '.ChatMessageInfo.MetadataEntry', '10': 'metadata'},
  ],
  '3': const [ChatMessageInfo_MetadataEntry$json],
};

@$core.Deprecated('Use chatMessageInfoDescriptor instead')
const ChatMessageInfo_MetadataEntry$json = const {
  '1': 'MetadataEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ChatMessageInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageInfoDescriptor = $convert.base64Decode('Cg9DaGF0TWVzc2FnZUluZm8SEAoDTUlkGAEgASgJUgNNSWQSFAoFcmVwbHkYAiABKAlSBXJlcGx5EhIKBEZyb20YAyABKANSBEZyb20SDgoCVG8YBCABKANSAlRvEiAKC0NvbnRlbnREYXRhGAUgASgJUgtDb250ZW50RGF0YRI5CgtDb250ZW50VHlwZRgGIAEoDjIXLkNoYXRNZXNzYWdlQ29udGVudFR5cGVSC0NvbnRlbnRUeXBlEhoKCFVwZGF0ZUF0GAcgASgDUghVcGRhdGVBdBIaCghDcmVhdGVBdBgIIAEoA1IIQ3JlYXRlQXQSIAoLTWVzc2FnZVR5cGUYCSABKAVSC01lc3NhZ2VUeXBlEjoKCG1ldGFkYXRhGAogAygLMh4uQ2hhdE1lc3NhZ2VJbmZvLk1ldGFkYXRhRW50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
