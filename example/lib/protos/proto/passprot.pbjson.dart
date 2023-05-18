///
//  Generated code. Do not modify.
//  source: protos/proto/passprot.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rPCAuthenticationReqDescriptor instead')
const RPCAuthenticationReq$json = const {
  '1': 'RPCAuthenticationReq',
  '2': const [
    const {'1': 'Token', '3': 1, '4': 1, '5': 9, '10': 'Token'},
  ],
};

/// Descriptor for `RPCAuthenticationReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCAuthenticationReqDescriptor = $convert.base64Decode('ChRSUENBdXRoZW50aWNhdGlvblJlcRIUCgVUb2tlbhgBIAEoCVIFVG9rZW4=');
@$core.Deprecated('Use rPCAuthenticationResDescriptor instead')
const RPCAuthenticationRes$json = const {
  '1': 'RPCAuthenticationRes',
  '2': const [
    const {'1': 'State', '3': 1, '4': 1, '5': 11, '6': '.State', '10': 'State'},
    const {'1': 'UserId', '3': 2, '4': 1, '5': 3, '10': 'UserId'},
    const {'1': 'AccountId', '3': 3, '4': 1, '5': 5, '10': 'AccountId'},
    const {'1': 'ResidentId', '3': 4, '4': 1, '5': 5, '10': 'ResidentId'},
  ],
};

/// Descriptor for `RPCAuthenticationRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCAuthenticationResDescriptor = $convert.base64Decode('ChRSUENBdXRoZW50aWNhdGlvblJlcxIcCgVTdGF0ZRgBIAEoCzIGLlN0YXRlUgVTdGF0ZRIWCgZVc2VySWQYAiABKANSBlVzZXJJZBIcCglBY2NvdW50SWQYAyABKAVSCUFjY291bnRJZBIeCgpSZXNpZGVudElkGAQgASgFUgpSZXNpZGVudElk');
@$core.Deprecated('Use rPCLoginReqDescriptor instead')
const RPCLoginReq$json = const {
  '1': 'RPCLoginReq',
  '2': const [
    const {'1': 'Mobile', '3': 1, '4': 1, '5': 9, '10': 'Mobile'},
    const {'1': 'Country', '3': 2, '4': 1, '5': 9, '10': 'Country'},
    const {'1': 'Mode', '3': 3, '4': 1, '5': 5, '10': 'Mode'},
    const {'1': 'Password', '3': 4, '4': 1, '5': 9, '10': 'Password'},
  ],
};

/// Descriptor for `RPCLoginReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCLoginReqDescriptor = $convert.base64Decode('CgtSUENMb2dpblJlcRIWCgZNb2JpbGUYASABKAlSBk1vYmlsZRIYCgdDb3VudHJ5GAIgASgJUgdDb3VudHJ5EhIKBE1vZGUYAyABKAVSBE1vZGUSGgoIUGFzc3dvcmQYBCABKAlSCFBhc3N3b3Jk');
@$core.Deprecated('Use rPCLoginResDescriptor instead')
const RPCLoginRes$json = const {
  '1': 'RPCLoginRes',
  '2': const [
    const {'1': 'State', '3': 1, '4': 1, '5': 11, '6': '.State', '10': 'State'},
    const {'1': 'UserId', '3': 2, '4': 1, '5': 3, '10': 'UserId'},
    const {'1': 'AccountId', '3': 3, '4': 1, '5': 5, '10': 'AccountId'},
    const {'1': 'ResidentId', '3': 4, '4': 1, '5': 5, '10': 'ResidentId'},
    const {'1': 'AccessToken', '3': 5, '4': 1, '5': 9, '10': 'AccessToken'},
  ],
};

/// Descriptor for `RPCLoginRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rPCLoginResDescriptor = $convert.base64Decode('CgtSUENMb2dpblJlcxIcCgVTdGF0ZRgBIAEoCzIGLlN0YXRlUgVTdGF0ZRIWCgZVc2VySWQYAiABKANSBlVzZXJJZBIcCglBY2NvdW50SWQYAyABKAVSCUFjY291bnRJZBIeCgpSZXNpZGVudElkGAQgASgFUgpSZXNpZGVudElkEiAKC0FjY2Vzc1Rva2VuGAUgASgJUgtBY2Nlc3NUb2tlbg==');
