///
//  Generated code. Do not modify.
//  source: protos/proto/hall.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rPCOnlineReqDescriptor instead')
const RPCOnlineReq$json = const {
  '1': 'RPCOnlineReq',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 9, '10': 'Token'},
    const {'1': 'IP', '3': 2, '4': 1, '5': 9, '10': 'IP'},
    const {'1': 'Platform', '3': 3, '4': 1, '5': 9, '10': 'Platform'},
    const {'1': 'Version', '3': 4, '4': 1, '5': 9, '10': 'Version'},
    const {'1': 'BuildNumber', '3': 5, '4': 1, '5': 9, '10': 'BuildNumber'},
  ],
};

/// Descriptor for `RPCOnlineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCOnlineReqDescriptor = $convert.base64Decode('CgxSUENPbmxpbmVSZXESFAoFVG9rZW4YASABKAlSBVRva2VuEg4KAklQGAIgASgJUgJJUBIaCghQbGF0Zm9ybRgDIAEoCVIIUGxhdGZvcm0SGAoHVmVyc2lvbhgEIAEoCVIHVmVyc2lvbhIgCgtCdWlsZE51bWJlchgFIAEoCVILQnVpbGROdW1iZXI=');
@$core.Deprecated('Use rPCOnlineResDescriptor instead')
const RPCOnlineRes$json = const {
  '1': 'RPCOnlineRes',
  '2': const [
    const {'1': 'State', '3': 1, '4': 1, '5': 11, '6': '.State', '10': 'State'},
    const {'1': 'UserID', '3': 2, '4': 1, '5': 3, '10': 'UserID'},
  ],
};

/// Descriptor for `RPCOnlineRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCOnlineResDescriptor = $convert.base64Decode('CgxSUENPbmxpbmVSZXMSHAoFU3RhdGUYASABKAsyBi5TdGF0ZVIFU3RhdGUSFgoGVXNlcklEGAIgASgDUgZVc2VySUQ=');
@$core.Deprecated('Use rPCOfflineReqDescriptor instead')
const RPCOfflineReq$json = const {
  '1': 'RPCOfflineReq',
  '2': const [
    const {'1': 'UserID', '3': 1, '4': 1, '5': 3, '10': 'UserID'},
  ],
};

/// Descriptor for `RPCOfflineReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCOfflineReqDescriptor = $convert.base64Decode('Cg1SUENPZmZsaW5lUmVxEhYKBlVzZXJJRBgBIAEoA1IGVXNlcklE');
@$core.Deprecated('Use rPCOfflineResDescriptor instead')
const RPCOfflineRes$json = const {
  '1': 'RPCOfflineRes',
  '2': const [
    const {'1': 'State', '3': 1, '4': 1, '5': 11, '6': '.State', '10': 'State'},
  ],
};

/// Descriptor for `RPCOfflineRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCOfflineResDescriptor = $convert.base64Decode('Cg1SUENPZmZsaW5lUmVzEhwKBVN0YXRlGAEgASgLMgYuU3RhdGVSBVN0YXRl');
