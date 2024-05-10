import 'dart:async';
import 'dart:math';
import 'package:grpc/grpc.dart';
import 'asr.pbgrpc.dart';

// Future<void> call(List<String> args) async {
final channel = ClientChannel(
  'host',
  port: 50051,
  options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
);

final stub = AsrServiceClient(channel);

Future<ValidateAudioResponse> callStream(List<double> data,
    int sampleRate,
    int verseIndex,
    int exitCode,
    int wordIndex
) async {
  print(data.reduce(max));
  print(data.reduce(min));
  print(data.length);
  final request = ValidateAudioRequest()
    ..sampleRate = sampleRate
    ..verseIndex = verseIndex
    ..chapterIndex = exitCode
    ..wordIndex = wordIndex
    ..audio.addAll(data);

  StreamController<ValidateAudioRequest> streamController = StreamController<ValidateAudioRequest>();
  streamController.add(request);

  final stream = stub.validateAudio(streamController.stream);
  await for (ValidateAudioResponse response in stream) {
    print('Received text response: ${response}');
    return response;
  }
  return ValidateAudioResponse(exitCode: -1);
}