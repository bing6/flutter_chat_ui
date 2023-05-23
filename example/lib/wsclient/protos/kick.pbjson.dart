///
//  Generated code. Do not modify.
//  source: kick.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use kickMsgDescriptor instead')
const KickMsg$json = const {
  '1': 'KickMsg',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `KickMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickMsgDescriptor = $convert.base64Decode('CgdLaWNrTXNnEhYKBnVzZXJJZBgBIAEoCVIGdXNlcklk');
@$core.Deprecated('Use kickAnswerDescriptor instead')
const KickAnswer$json = const {
  '1': 'KickAnswer',
  '2': const [
    const {'1': 'kicked', '3': 1, '4': 1, '5': 8, '10': 'kicked'},
  ],
};

/// Descriptor for `KickAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kickAnswerDescriptor = $convert.base64Decode('CgpLaWNrQW5zd2VyEhYKBmtpY2tlZBgBIAEoCFIGa2lja2Vk');
