///
//  Generated code. Do not modify.
//  source: rpc_srv.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use reqPingDescriptor instead')
const ReqPing$json = const {
  '1': 'ReqPing',
  '2': const [
    const {'1': 'Timestamp', '3': 1, '4': 1, '5': 3, '10': 'Timestamp'},
  ],
};

/// Descriptor for `ReqPing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reqPingDescriptor = $convert.base64Decode('CgdSZXFQaW5nEhwKCVRpbWVzdGFtcBgBIAEoA1IJVGltZXN0YW1w');
@$core.Deprecated('Use resPongDescriptor instead')
const ResPong$json = const {
  '1': 'ResPong',
  '2': const [
    const {'1': 'Timestamp', '3': 1, '4': 1, '5': 3, '10': 'Timestamp'},
  ],
};

/// Descriptor for `ResPong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resPongDescriptor = $convert.base64Decode('CgdSZXNQb25nEhwKCVRpbWVzdGFtcBgBIAEoA1IJVGltZXN0YW1w');
@$core.Deprecated('Use reqAuthenticationDescriptor instead')
const ReqAuthentication$json = const {
  '1': 'ReqAuthentication',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 9, '10': 'Token'},
  ],
};

/// Descriptor for `ReqAuthentication`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reqAuthenticationDescriptor = $convert.base64Decode('ChFSZXFBdXRoZW50aWNhdGlvbhIUCgVUb2tlbhgBIAEoCVIFVG9rZW4=');
@$core.Deprecated('Use resAuthenticationDescriptor instead')
const ResAuthentication$json = const {
  '1': 'ResAuthentication',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 11, '6': '.StateInfo', '10': 'state'},
    const {'1': 'UserId', '3': 2, '4': 1, '5': 3, '10': 'UserId'},
    const {'1': 'AccountId', '3': 3, '4': 1, '5': 5, '10': 'AccountId'},
    const {'1': 'ResidentId', '3': 4, '4': 1, '5': 5, '10': 'ResidentId'},
  ],
};

/// Descriptor for `ResAuthentication`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resAuthenticationDescriptor = $convert.base64Decode('ChFSZXNBdXRoZW50aWNhdGlvbhIgCgVzdGF0ZRgBIAEoCzIKLlN0YXRlSW5mb1IFc3RhdGUSFgoGVXNlcklkGAIgASgDUgZVc2VySWQSHAoJQWNjb3VudElkGAMgASgFUglBY2NvdW50SWQSHgoKUmVzaWRlbnRJZBgEIAEoBVIKUmVzaWRlbnRJZA==');
@$core.Deprecated('Use reqNewRobotDescriptor instead')
const ReqNewRobot$json = const {
  '1': 'ReqNewRobot',
  '2': const [
    const {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
    const {'1': 'Gender', '3': 2, '4': 1, '5': 5, '10': 'Gender'},
    const {'1': 'Series', '3': 3, '4': 1, '5': 5, '10': 'Series'},
    const {'1': 'Tags', '3': 4, '4': 1, '5': 9, '10': 'Tags'},
    const {'1': 'LinkId', '3': 5, '4': 1, '5': 5, '10': 'LinkId'},
  ],
};

/// Descriptor for `ReqNewRobot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reqNewRobotDescriptor = $convert.base64Decode('CgtSZXFOZXdSb2JvdBISCgROYW1lGAEgASgJUgROYW1lEhYKBkdlbmRlchgCIAEoBVIGR2VuZGVyEhYKBlNlcmllcxgDIAEoBVIGU2VyaWVzEhIKBFRhZ3MYBCABKAlSBFRhZ3MSFgoGTGlua0lkGAUgASgFUgZMaW5rSWQ=');
@$core.Deprecated('Use resNewRobotDescriptor instead')
const ResNewRobot$json = const {
  '1': 'ResNewRobot',
  '2': const [
    const {'1': 'Data', '3': 2, '4': 1, '5': 11, '6': '.RobotInfo', '10': 'Data'},
  ],
};

/// Descriptor for `ResNewRobot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resNewRobotDescriptor = $convert.base64Decode('CgtSZXNOZXdSb2JvdBIeCgREYXRhGAIgASgLMgouUm9ib3RJbmZvUgREYXRh');
@$core.Deprecated('Use reqRobotListDescriptor instead')
const ReqRobotList$json = const {
  '1': 'ReqRobotList',
  '2': const [
    const {'1': 'UserId', '3': 1, '4': 1, '5': 3, '10': 'UserId'},
  ],
};

/// Descriptor for `ReqRobotList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reqRobotListDescriptor = $convert.base64Decode('CgxSZXFSb2JvdExpc3QSFgoGVXNlcklkGAEgASgDUgZVc2VySWQ=');
@$core.Deprecated('Use resRobotListDescriptor instead')
const ResRobotList$json = const {
  '1': 'ResRobotList',
  '2': const [
    const {'1': 'Items', '3': 2, '4': 3, '5': 11, '6': '.RobotInfo', '10': 'Items'},
  ],
};

/// Descriptor for `ResRobotList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resRobotListDescriptor = $convert.base64Decode('CgxSZXNSb2JvdExpc3QSIAoFSXRlbXMYAiADKAsyCi5Sb2JvdEluZm9SBUl0ZW1z');
@$core.Deprecated('Use reqChatTextMessageDescriptor instead')
const ReqChatTextMessage$json = const {
  '1': 'ReqChatTextMessage',
  '2': const [
    const {'1': 'MId', '3': 1, '4': 1, '5': 9, '10': 'MId'},
    const {'1': 'From', '3': 2, '4': 1, '5': 3, '10': 'From'},
    const {'1': 'To', '3': 3, '4': 1, '5': 3, '10': 'To'},
    const {'1': 'Content', '3': 4, '4': 1, '5': 9, '10': 'Content'},
  ],
};

/// Descriptor for `ReqChatTextMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reqChatTextMessageDescriptor = $convert.base64Decode('ChJSZXFDaGF0VGV4dE1lc3NhZ2USEAoDTUlkGAEgASgJUgNNSWQSEgoERnJvbRgCIAEoA1IERnJvbRIOCgJUbxgDIAEoA1ICVG8SGAoHQ29udGVudBgEIAEoCVIHQ29udGVudA==');
@$core.Deprecated('Use resChatMessageDescriptor instead')
const ResChatMessage$json = const {
  '1': 'ResChatMessage',
  '2': const [
    const {'1': 'payload', '3': 1, '4': 1, '5': 11, '6': '.ChatMessageInfo', '10': 'payload'},
  ],
};

/// Descriptor for `ResChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resChatMessageDescriptor = $convert.base64Decode('Cg5SZXNDaGF0TWVzc2FnZRIqCgdwYXlsb2FkGAEgASgLMhAuQ2hhdE1lc3NhZ2VJbmZvUgdwYXlsb2Fk');
@$core.Deprecated('Use reqChatListArgsDescriptor instead')
const ReqChatListArgs$json = const {
  '1': 'ReqChatListArgs',
  '2': const [
    const {'1': 'GroupId', '3': 1, '4': 1, '5': 3, '10': 'GroupId'},
    const {'1': 'OffsetId', '3': 2, '4': 1, '5': 3, '10': 'OffsetId'},
    const {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `ReqChatListArgs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reqChatListArgsDescriptor = $convert.base64Decode('Cg9SZXFDaGF0TGlzdEFyZ3MSGAoHR3JvdXBJZBgBIAEoA1IHR3JvdXBJZBIaCghPZmZzZXRJZBgCIAEoA1IIT2Zmc2V0SWQSFAoFbGltaXQYAyABKAVSBWxpbWl0');
@$core.Deprecated('Use resChatListDataDescriptor instead')
const ResChatListData$json = const {
  '1': 'ResChatListData',
  '2': const [
    const {'1': 'OffsetId', '3': 1, '4': 1, '5': 3, '10': 'OffsetId'},
    const {'1': 'Items', '3': 2, '4': 3, '5': 11, '6': '.ChatMessageInfo', '10': 'Items'},
  ],
};

/// Descriptor for `ResChatListData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resChatListDataDescriptor = $convert.base64Decode('Cg9SZXNDaGF0TGlzdERhdGESGgoIT2Zmc2V0SWQYASABKANSCE9mZnNldElkEiYKBUl0ZW1zGAIgAygLMhAuQ2hhdE1lc3NhZ2VJbmZvUgVJdGVtcw==');
