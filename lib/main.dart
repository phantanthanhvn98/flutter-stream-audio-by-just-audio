import 'dart:core';
import 'dart:typed_data';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:record/record.dart';

import 'asr_grpc/asr.pb.dart';
import 'asr_grpc/call.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audio Recorder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AudioPage(),
    );
  }
}

class AudioPage extends StatefulWidget {
  @override
  _AudioPageState createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {

  static const SAMPLE_RATE = 48000;
  static const DURATION = 5;

  final AudioRecorder _recorder = AudioRecorder();
  bool _isRecording = false;
  List<double> _floatList = [];
  List<int> indexs = [1, 1, 1];
  String textWordMistake = '';
  String textTajweedMistake = '';
  bool isBatch = false;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: DURATION), callbackTimer);
  }

  @override
  void dispose() {
    _recorder.dispose();
    super.dispose();
  }

  Future<void> _startRecording() async {
    setState(() {
      textWordMistake = '';
      textTajweedMistake = '';
      _floatList = [];
    });

    final bool isPermissionGranted = await _recorder.hasPermission();
    if (!isPermissionGranted) {
      return;
    }

    // Define the configuration for the recording
    const config = RecordConfig(
      // Specify the format, encoder, sample rate, etc., as needed
      numChannels: 1,
      encoder: AudioEncoder.pcm16bits, // For example, pcm16bits
      sampleRate: SAMPLE_RATE, // Sample rate
      bitRate: 128000, // Bit rate
      noiseSuppress: true,
      echoCancel: true,
      autoGain: true
    );

    // Start recording to file with the specified configuration
    (await _recorder.startStream(config)).listen((Uint8List data) {
      List<double> floatData = _convertAudioDataToFloatList(data);
      setState(() {
        _floatList.addAll(floatData);
      });
    });
    setState(() {
      _isRecording = true;
    });
  }

  List<double> _convertAudioDataToFloatList(Uint8List data) {
    ByteData byteData = data.buffer.asByteData();
    List<double> floatList = [];
    for (int i = 0; i < data.length - 1; i += 2) {
      int  sample = byteData.getInt16(i, Endian.big);
      double floatValue = sample / 65535.0;
      floatList.add(floatValue);
    }
    return floatList;
  }

  Future<void> _stopRecording() async {
    await _recorder.stop();
    if (isBatch) {
      print('run the batch inference');
      await callback();
    }
    setState(() {
      _isRecording = false;
      _floatList = [];
    });
  }

  Future<void> callback() async{
    int LENGTH_DATA = (SAMPLE_RATE*DURATION).toInt();
    if (isBatch){
      LENGTH_DATA = _floatList.length -1;
    }
    if (_floatList.length >= LENGTH_DATA){
      ValidateAudioResponse response = await callStream(
          _floatList.take(LENGTH_DATA).toList(),
          SAMPLE_RATE,
          indexs[0],
          indexs[1],
          indexs[2]
      );
      setState(() {
        _floatList = _floatList.skip(LENGTH_DATA).toList();
        if (response.exitCode > 0){
          setState(() {
            indexs[0] = response.verseIndex;
            indexs[1] = response.exitCode;
            indexs[2] = response.wordIndex;
            _floatList = [];
            indexs = indexs;
          });

          for (var textWordMistake_ in response.wordMistakes){
            int verse = textWordMistake_.verse;
            String speachLike = textWordMistake_.speachLike;
            textWordMistake = "$textWordMistake In $verse we have a mistake $speachLike";
          }
          for (var tajweedMistake_ in response.tajweedMistakes){
            int verse = tajweedMistake_.verse;
            String speachLike = tajweedMistake_.speachLike;
            String message = tajweedMistake_.message;
            textTajweedMistake = "$textTajweedMistake In $verse we have a mistake $speachLike. Message: $message";
          }
        }
      });
    }
  }
  Future<void> callbackTimer(Timer timer) async{
    if (isBatch) {
      return;
    }
    callback();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Audio Recorder 1.1'),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Icon(
                  _isRecording ? Icons.mic : Icons.mic_none,
                  size: 100,
                  color: _isRecording ? Colors.red : Colors.blue,
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Batch mode: ",
                        style: TextStyle(fontSize: 24),
                      ),
                      Switch(
                          activeColor: Colors.blue,
                          value: isBatch,
                          onChanged: (value) {
                            setState(() {
                              isBatch = value;
                            });
                          })
                    ]
                ),
                const SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _isRecording ? null : _startRecording,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Record'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: _isRecording ? _stopRecording : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                        ),
                        child: const Text('Stop'),
                      ),

                    ]
                ),
                const SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                        child: Center(child: Text('$textWordMistake...')),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // color: Colors.green,
                        child: Center(child: Text('$textTajweedMistake...')),
                      ),
                    ),
                  ],
                ),
                // Row(
                //   children: [
                //     Text(
                //       "$textWordMistake...",
                //       style: TextStyle(fontSize: 24),
                //     ),
                //     const SizedBox(width: 30),
                //     Text(
                //       "$textTajweedMistake...",
                //       style: TextStyle(fontSize: 24),
                //     ),
                //   ]
                // )
              ],
            ),
          ),
        )
    );
  }
}
