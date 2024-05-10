//
//  Generated code. Do not modify.
//  source: asr.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use streamRequestDescriptor instead')
const StreamRequest$json = {
  '1': 'StreamRequest',
  '2': [
    {'1': 'sample_rate', '3': 1, '4': 1, '5': 5, '10': 'sampleRate'},
    {'1': 'audio', '3': 2, '4': 3, '5': 2, '10': 'audio'},
  ],
};

/// Descriptor for `StreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamRequestDescriptor = $convert.base64Decode(
    'Cg1TdHJlYW1SZXF1ZXN0Eh8KC3NhbXBsZV9yYXRlGAEgASgFUgpzYW1wbGVSYXRlEhQKBWF1ZG'
    'lvGAIgAygCUgVhdWRpbw==');

@$core.Deprecated('Use audioInputDescriptor instead')
const AudioInput$json = {
  '1': 'AudioInput',
  '2': [
    {'1': 'audio', '3': 1, '4': 3, '5': 2, '10': 'audio'},
  ],
};

/// Descriptor for `AudioInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioInputDescriptor = $convert.base64Decode(
    'CgpBdWRpb0lucHV0EhQKBWF1ZGlvGAEgAygCUgVhdWRpbw==');

@$core.Deprecated('Use streamResponseDescriptor instead')
const StreamResponse$json = {
  '1': 'StreamResponse',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `StreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamResponseDescriptor = $convert.base64Decode(
    'Cg5TdHJlYW1SZXNwb25zZRISCgR0ZXh0GAEgASgJUgR0ZXh0');

@$core.Deprecated('Use batchInputInferenceDescriptor instead')
const BatchInputInference$json = {
  '1': 'BatchInputInference',
  '2': [
    {'1': 'sample_rates', '3': 1, '4': 3, '5': 5, '10': 'sampleRates'},
    {'1': 'audios', '3': 2, '4': 3, '5': 11, '6': '.AudioInput', '10': 'audios'},
  ],
};

/// Descriptor for `BatchInputInference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchInputInferenceDescriptor = $convert.base64Decode(
    'ChNCYXRjaElucHV0SW5mZXJlbmNlEiEKDHNhbXBsZV9yYXRlcxgBIAMoBVILc2FtcGxlUmF0ZX'
    'MSIwoGYXVkaW9zGAIgAygLMgsuQXVkaW9JbnB1dFIGYXVkaW9z');

@$core.Deprecated('Use batchOutputInferenceDescriptor instead')
const BatchOutputInference$json = {
  '1': 'BatchOutputInference',
  '2': [
    {'1': 'texts', '3': 1, '4': 3, '5': 9, '10': 'texts'},
  ],
};

/// Descriptor for `BatchOutputInference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchOutputInferenceDescriptor = $convert.base64Decode(
    'ChRCYXRjaE91dHB1dEluZmVyZW5jZRIUCgV0ZXh0cxgBIAMoCVIFdGV4dHM=');

@$core.Deprecated('Use validateAudioRequestDescriptor instead')
const ValidateAudioRequest$json = {
  '1': 'ValidateAudioRequest',
  '2': [
    {'1': 'verse_index', '3': 1, '4': 1, '5': 5, '10': 'verseIndex'},
    {'1': 'sample_rate', '3': 2, '4': 1, '5': 5, '10': 'sampleRate'},
    {'1': 'audio', '3': 3, '4': 3, '5': 2, '10': 'audio'},
    {'1': 'chapter_index', '3': 4, '4': 1, '5': 5, '10': 'chapterIndex'},
    {'1': 'word_index', '3': 5, '4': 1, '5': 5, '10': 'wordIndex'},
  ],
};

/// Descriptor for `ValidateAudioRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAudioRequestDescriptor = $convert.base64Decode(
    'ChRWYWxpZGF0ZUF1ZGlvUmVxdWVzdBIfCgt2ZXJzZV9pbmRleBgBIAEoBVIKdmVyc2VJbmRleB'
    'IfCgtzYW1wbGVfcmF0ZRgCIAEoBVIKc2FtcGxlUmF0ZRIUCgVhdWRpbxgDIAMoAlIFYXVkaW8S'
    'IwoNY2hhcHRlcl9pbmRleBgEIAEoBVIMY2hhcHRlckluZGV4Eh0KCndvcmRfaW5kZXgYBSABKA'
    'VSCXdvcmRJbmRleA==');

@$core.Deprecated('Use wordMistakeDescriptor instead')
const WordMistake$json = {
  '1': 'WordMistake',
  '2': [
    {'1': 'chapter', '3': 1, '4': 1, '5': 5, '10': 'chapter'},
    {'1': 'verse', '3': 2, '4': 1, '5': 5, '10': 'verse'},
    {'1': 'word', '3': 3, '4': 1, '5': 5, '10': 'word'},
    {'1': 'speachLike', '3': 4, '4': 1, '5': 9, '10': 'speachLike'},
  ],
};

/// Descriptor for `WordMistake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wordMistakeDescriptor = $convert.base64Decode(
    'CgtXb3JkTWlzdGFrZRIYCgdjaGFwdGVyGAEgASgFUgdjaGFwdGVyEhQKBXZlcnNlGAIgASgFUg'
    'V2ZXJzZRISCgR3b3JkGAMgASgFUgR3b3JkEh4KCnNwZWFjaExpa2UYBCABKAlSCnNwZWFjaExp'
    'a2U=');

@$core.Deprecated('Use tajweedMistakeDescriptor instead')
const TajweedMistake$json = {
  '1': 'TajweedMistake',
  '2': [
    {'1': 'chapter', '3': 1, '4': 1, '5': 5, '10': 'chapter'},
    {'1': 'verse', '3': 2, '4': 1, '5': 5, '10': 'verse'},
    {'1': 'word', '3': 3, '4': 1, '5': 5, '10': 'word'},
    {'1': 'speachLike', '3': 4, '4': 1, '5': 9, '10': 'speachLike'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `TajweedMistake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tajweedMistakeDescriptor = $convert.base64Decode(
    'Cg5UYWp3ZWVkTWlzdGFrZRIYCgdjaGFwdGVyGAEgASgFUgdjaGFwdGVyEhQKBXZlcnNlGAIgAS'
    'gFUgV2ZXJzZRISCgR3b3JkGAMgASgFUgR3b3JkEh4KCnNwZWFjaExpa2UYBCABKAlSCnNwZWFj'
    'aExpa2USGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use validateAudioResponseDescriptor instead')
const ValidateAudioResponse$json = {
  '1': 'ValidateAudioResponse',
  '2': [
    {'1': 'word_mistakes', '3': 1, '4': 3, '5': 11, '6': '.WordMistake', '10': 'wordMistakes'},
    {'1': 'tajweed_mistakes', '3': 2, '4': 3, '5': 11, '6': '.TajweedMistake', '10': 'tajweedMistakes'},
    {'1': 'verse_index', '3': 3, '4': 1, '5': 5, '10': 'verseIndex'},
    {'1': 'exit_code', '3': 4, '4': 1, '5': 5, '10': 'exitCode'},
    {'1': 'word_index', '3': 5, '4': 1, '5': 5, '10': 'wordIndex'},
  ],
};

/// Descriptor for `ValidateAudioResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAudioResponseDescriptor = $convert.base64Decode(
    'ChVWYWxpZGF0ZUF1ZGlvUmVzcG9uc2USMQoNd29yZF9taXN0YWtlcxgBIAMoCzIMLldvcmRNaX'
    'N0YWtlUgx3b3JkTWlzdGFrZXMSOgoQdGFqd2VlZF9taXN0YWtlcxgCIAMoCzIPLlRhandlZWRN'
    'aXN0YWtlUg90YWp3ZWVkTWlzdGFrZXMSHwoLdmVyc2VfaW5kZXgYAyABKAVSCnZlcnNlSW5kZX'
    'gSGwoJZXhpdF9jb2RlGAQgASgFUghleGl0Q29kZRIdCgp3b3JkX2luZGV4GAUgASgFUgl3b3Jk'
    'SW5kZXg=');

@$core.Deprecated('Use validateAudioFileRequestDescriptor instead')
const ValidateAudioFileRequest$json = {
  '1': 'ValidateAudioFileRequest',
  '2': [
    {'1': 'verse_index', '3': 1, '4': 1, '5': 5, '10': 'verseIndex'},
    {'1': 'buffer', '3': 2, '4': 1, '5': 12, '10': 'buffer'},
    {'1': 'chapter_index', '3': 3, '4': 1, '5': 5, '10': 'chapterIndex'},
    {'1': 'word_index', '3': 4, '4': 1, '5': 5, '10': 'wordIndex'},
  ],
};

/// Descriptor for `ValidateAudioFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAudioFileRequestDescriptor = $convert.base64Decode(
    'ChhWYWxpZGF0ZUF1ZGlvRmlsZVJlcXVlc3QSHwoLdmVyc2VfaW5kZXgYASABKAVSCnZlcnNlSW'
    '5kZXgSFgoGYnVmZmVyGAIgASgMUgZidWZmZXISIwoNY2hhcHRlcl9pbmRleBgDIAEoBVIMY2hh'
    'cHRlckluZGV4Eh0KCndvcmRfaW5kZXgYBCABKAVSCXdvcmRJbmRleA==');

