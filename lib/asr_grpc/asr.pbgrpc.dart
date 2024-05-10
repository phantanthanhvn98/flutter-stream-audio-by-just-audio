//
//  Generated code. Do not modify.
//  source: asr.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'asr.pb.dart' as $0;

export 'asr.pb.dart';

@$pb.GrpcServiceName('AsrService')
class AsrServiceClient extends $grpc.Client {
  static final _$streamCall = $grpc.ClientMethod<$0.StreamRequest, $0.StreamResponse>(
      '/AsrService/StreamCall',
      ($0.StreamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StreamResponse.fromBuffer(value));
  static final _$inference = $grpc.ClientMethod<$0.BatchInputInference, $0.BatchOutputInference>(
      '/AsrService/Inference',
      ($0.BatchInputInference value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BatchOutputInference.fromBuffer(value));
  static final _$validateAudio = $grpc.ClientMethod<$0.ValidateAudioRequest, $0.ValidateAudioResponse>(
      '/AsrService/ValidateAudio',
      ($0.ValidateAudioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ValidateAudioResponse.fromBuffer(value));
  static final _$validateAudioFile = $grpc.ClientMethod<$0.ValidateAudioFileRequest, $0.ValidateAudioResponse>(
      '/AsrService/ValidateAudioFile',
      ($0.ValidateAudioFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ValidateAudioResponse.fromBuffer(value));

  AsrServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.StreamResponse> streamCall($async.Stream<$0.StreamRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamCall, request, options: options);
  }

  $grpc.ResponseFuture<$0.BatchOutputInference> inference($0.BatchInputInference request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$inference, request, options: options);
  }

  $grpc.ResponseStream<$0.ValidateAudioResponse> validateAudio($async.Stream<$0.ValidateAudioRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$validateAudio, request, options: options);
  }

  $grpc.ResponseStream<$0.ValidateAudioResponse> validateAudioFile($async.Stream<$0.ValidateAudioFileRequest> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$validateAudioFile, request, options: options);
  }
}

@$pb.GrpcServiceName('AsrService')
abstract class AsrServiceBase extends $grpc.Service {
  $core.String get $name => 'AsrService';

  AsrServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StreamRequest, $0.StreamResponse>(
        'StreamCall',
        streamCall,
        true,
        true,
        ($core.List<$core.int> value) => $0.StreamRequest.fromBuffer(value),
        ($0.StreamResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BatchInputInference, $0.BatchOutputInference>(
        'Inference',
        inference_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.BatchInputInference.fromBuffer(value),
        ($0.BatchOutputInference value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ValidateAudioRequest, $0.ValidateAudioResponse>(
        'ValidateAudio',
        validateAudio,
        true,
        true,
        ($core.List<$core.int> value) => $0.ValidateAudioRequest.fromBuffer(value),
        ($0.ValidateAudioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ValidateAudioFileRequest, $0.ValidateAudioResponse>(
        'ValidateAudioFile',
        validateAudioFile,
        true,
        true,
        ($core.List<$core.int> value) => $0.ValidateAudioFileRequest.fromBuffer(value),
        ($0.ValidateAudioResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.BatchOutputInference> inference_Pre($grpc.ServiceCall call, $async.Future<$0.BatchInputInference> request) async {
    return inference(call, await request);
  }

  $async.Stream<$0.StreamResponse> streamCall($grpc.ServiceCall call, $async.Stream<$0.StreamRequest> request);
  $async.Future<$0.BatchOutputInference> inference($grpc.ServiceCall call, $0.BatchInputInference request);
  $async.Stream<$0.ValidateAudioResponse> validateAudio($grpc.ServiceCall call, $async.Stream<$0.ValidateAudioRequest> request);
  $async.Stream<$0.ValidateAudioResponse> validateAudioFile($grpc.ServiceCall call, $async.Stream<$0.ValidateAudioFileRequest> request);
}
