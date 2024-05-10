//
//  Generated code. Do not modify.
//  source: asr.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StreamRequest extends $pb.GeneratedMessage {
  factory StreamRequest({
    $core.int? sampleRate,
    $core.Iterable<$core.double>? audio,
  }) {
    final $result = create();
    if (sampleRate != null) {
      $result.sampleRate = sampleRate;
    }
    if (audio != null) {
      $result.audio.addAll(audio);
    }
    return $result;
  }
  StreamRequest._() : super();
  factory StreamRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sampleRate', $pb.PbFieldType.O3)
    ..p<$core.double>(2, _omitFieldNames ? '' : 'audio', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamRequest clone() => StreamRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamRequest copyWith(void Function(StreamRequest) updates) => super.copyWith((message) => updates(message as StreamRequest)) as StreamRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamRequest create() => StreamRequest._();
  StreamRequest createEmptyInstance() => create();
  static $pb.PbList<StreamRequest> createRepeated() => $pb.PbList<StreamRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamRequest>(create);
  static StreamRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sampleRate => $_getIZ(0);
  @$pb.TagNumber(1)
  set sampleRate($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSampleRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSampleRate() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.double> get audio => $_getList(1);
}

class AudioInput extends $pb.GeneratedMessage {
  factory AudioInput({
    $core.Iterable<$core.double>? audio,
  }) {
    final $result = create();
    if (audio != null) {
      $result.audio.addAll(audio);
    }
    return $result;
  }
  AudioInput._() : super();
  factory AudioInput.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AudioInput.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AudioInput', createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'audio', $pb.PbFieldType.KF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AudioInput clone() => AudioInput()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AudioInput copyWith(void Function(AudioInput) updates) => super.copyWith((message) => updates(message as AudioInput)) as AudioInput;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AudioInput create() => AudioInput._();
  AudioInput createEmptyInstance() => create();
  static $pb.PbList<AudioInput> createRepeated() => $pb.PbList<AudioInput>();
  @$core.pragma('dart2js:noInline')
  static AudioInput getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudioInput>(create);
  static AudioInput? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get audio => $_getList(0);
}

class StreamResponse extends $pb.GeneratedMessage {
  factory StreamResponse({
    $core.String? text,
  }) {
    final $result = create();
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  StreamResponse._() : super();
  factory StreamResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StreamResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StreamResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StreamResponse clone() => StreamResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StreamResponse copyWith(void Function(StreamResponse) updates) => super.copyWith((message) => updates(message as StreamResponse)) as StreamResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StreamResponse create() => StreamResponse._();
  StreamResponse createEmptyInstance() => create();
  static $pb.PbList<StreamResponse> createRepeated() => $pb.PbList<StreamResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamResponse>(create);
  static StreamResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => clearField(1);
}

class BatchInputInference extends $pb.GeneratedMessage {
  factory BatchInputInference({
    $core.Iterable<$core.int>? sampleRates,
    $core.Iterable<AudioInput>? audios,
  }) {
    final $result = create();
    if (sampleRates != null) {
      $result.sampleRates.addAll(sampleRates);
    }
    if (audios != null) {
      $result.audios.addAll(audios);
    }
    return $result;
  }
  BatchInputInference._() : super();
  factory BatchInputInference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchInputInference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatchInputInference', createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'sampleRates', $pb.PbFieldType.K3)
    ..pc<AudioInput>(2, _omitFieldNames ? '' : 'audios', $pb.PbFieldType.PM, subBuilder: AudioInput.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatchInputInference clone() => BatchInputInference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatchInputInference copyWith(void Function(BatchInputInference) updates) => super.copyWith((message) => updates(message as BatchInputInference)) as BatchInputInference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchInputInference create() => BatchInputInference._();
  BatchInputInference createEmptyInstance() => create();
  static $pb.PbList<BatchInputInference> createRepeated() => $pb.PbList<BatchInputInference>();
  @$core.pragma('dart2js:noInline')
  static BatchInputInference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchInputInference>(create);
  static BatchInputInference? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get sampleRates => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<AudioInput> get audios => $_getList(1);
}

class BatchOutputInference extends $pb.GeneratedMessage {
  factory BatchOutputInference({
    $core.Iterable<$core.String>? texts,
  }) {
    final $result = create();
    if (texts != null) {
      $result.texts.addAll(texts);
    }
    return $result;
  }
  BatchOutputInference._() : super();
  factory BatchOutputInference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BatchOutputInference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BatchOutputInference', createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'texts')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BatchOutputInference clone() => BatchOutputInference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BatchOutputInference copyWith(void Function(BatchOutputInference) updates) => super.copyWith((message) => updates(message as BatchOutputInference)) as BatchOutputInference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BatchOutputInference create() => BatchOutputInference._();
  BatchOutputInference createEmptyInstance() => create();
  static $pb.PbList<BatchOutputInference> createRepeated() => $pb.PbList<BatchOutputInference>();
  @$core.pragma('dart2js:noInline')
  static BatchOutputInference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BatchOutputInference>(create);
  static BatchOutputInference? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get texts => $_getList(0);
}

class ValidateAudioRequest extends $pb.GeneratedMessage {
  factory ValidateAudioRequest({
    $core.int? verseIndex,
    $core.int? sampleRate,
    $core.Iterable<$core.double>? audio,
    $core.int? chapterIndex,
    $core.int? wordIndex,
  }) {
    final $result = create();
    if (verseIndex != null) {
      $result.verseIndex = verseIndex;
    }
    if (sampleRate != null) {
      $result.sampleRate = sampleRate;
    }
    if (audio != null) {
      $result.audio.addAll(audio);
    }
    if (chapterIndex != null) {
      $result.chapterIndex = chapterIndex;
    }
    if (wordIndex != null) {
      $result.wordIndex = wordIndex;
    }
    return $result;
  }
  ValidateAudioRequest._() : super();
  factory ValidateAudioRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAudioRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAudioRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'verseIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sampleRate', $pb.PbFieldType.O3)
    ..p<$core.double>(3, _omitFieldNames ? '' : 'audio', $pb.PbFieldType.KF)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'chapterIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'wordIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAudioRequest clone() => ValidateAudioRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAudioRequest copyWith(void Function(ValidateAudioRequest) updates) => super.copyWith((message) => updates(message as ValidateAudioRequest)) as ValidateAudioRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAudioRequest create() => ValidateAudioRequest._();
  ValidateAudioRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateAudioRequest> createRepeated() => $pb.PbList<ValidateAudioRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateAudioRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAudioRequest>(create);
  static ValidateAudioRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get verseIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set verseIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerseIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerseIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sampleRate => $_getIZ(1);
  @$pb.TagNumber(2)
  set sampleRate($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSampleRate() => $_has(1);
  @$pb.TagNumber(2)
  void clearSampleRate() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.double> get audio => $_getList(2);

  @$pb.TagNumber(4)
  $core.int get chapterIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set chapterIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChapterIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearChapterIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get wordIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set wordIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWordIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearWordIndex() => clearField(5);
}

class WordMistake extends $pb.GeneratedMessage {
  factory WordMistake({
    $core.int? chapter,
    $core.int? verse,
    $core.int? word,
    $core.String? speachLike,
  }) {
    final $result = create();
    if (chapter != null) {
      $result.chapter = chapter;
    }
    if (verse != null) {
      $result.verse = verse;
    }
    if (word != null) {
      $result.word = word;
    }
    if (speachLike != null) {
      $result.speachLike = speachLike;
    }
    return $result;
  }
  WordMistake._() : super();
  factory WordMistake.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WordMistake.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WordMistake', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'chapter', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'verse', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'word', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'speachLike', protoName: 'speachLike')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WordMistake clone() => WordMistake()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WordMistake copyWith(void Function(WordMistake) updates) => super.copyWith((message) => updates(message as WordMistake)) as WordMistake;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WordMistake create() => WordMistake._();
  WordMistake createEmptyInstance() => create();
  static $pb.PbList<WordMistake> createRepeated() => $pb.PbList<WordMistake>();
  @$core.pragma('dart2js:noInline')
  static WordMistake getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WordMistake>(create);
  static WordMistake? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get chapter => $_getIZ(0);
  @$pb.TagNumber(1)
  set chapter($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChapter() => $_has(0);
  @$pb.TagNumber(1)
  void clearChapter() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get verse => $_getIZ(1);
  @$pb.TagNumber(2)
  set verse($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerse() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerse() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get word => $_getIZ(2);
  @$pb.TagNumber(3)
  set word($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWord() => $_has(2);
  @$pb.TagNumber(3)
  void clearWord() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get speachLike => $_getSZ(3);
  @$pb.TagNumber(4)
  set speachLike($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpeachLike() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpeachLike() => clearField(4);
}

class TajweedMistake extends $pb.GeneratedMessage {
  factory TajweedMistake({
    $core.int? chapter,
    $core.int? verse,
    $core.int? word,
    $core.String? speachLike,
    $core.String? message,
  }) {
    final $result = create();
    if (chapter != null) {
      $result.chapter = chapter;
    }
    if (verse != null) {
      $result.verse = verse;
    }
    if (word != null) {
      $result.word = word;
    }
    if (speachLike != null) {
      $result.speachLike = speachLike;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  TajweedMistake._() : super();
  factory TajweedMistake.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TajweedMistake.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TajweedMistake', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'chapter', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'verse', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'word', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'speachLike', protoName: 'speachLike')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TajweedMistake clone() => TajweedMistake()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TajweedMistake copyWith(void Function(TajweedMistake) updates) => super.copyWith((message) => updates(message as TajweedMistake)) as TajweedMistake;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TajweedMistake create() => TajweedMistake._();
  TajweedMistake createEmptyInstance() => create();
  static $pb.PbList<TajweedMistake> createRepeated() => $pb.PbList<TajweedMistake>();
  @$core.pragma('dart2js:noInline')
  static TajweedMistake getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TajweedMistake>(create);
  static TajweedMistake? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get chapter => $_getIZ(0);
  @$pb.TagNumber(1)
  set chapter($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChapter() => $_has(0);
  @$pb.TagNumber(1)
  void clearChapter() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get verse => $_getIZ(1);
  @$pb.TagNumber(2)
  set verse($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerse() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerse() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get word => $_getIZ(2);
  @$pb.TagNumber(3)
  set word($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWord() => $_has(2);
  @$pb.TagNumber(3)
  void clearWord() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get speachLike => $_getSZ(3);
  @$pb.TagNumber(4)
  set speachLike($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpeachLike() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpeachLike() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

class ValidateAudioResponse extends $pb.GeneratedMessage {
  factory ValidateAudioResponse({
    $core.Iterable<WordMistake>? wordMistakes,
    $core.Iterable<TajweedMistake>? tajweedMistakes,
    $core.int? verseIndex,
    $core.int? exitCode,
    $core.int? wordIndex,
  }) {
    final $result = create();
    if (wordMistakes != null) {
      $result.wordMistakes.addAll(wordMistakes);
    }
    if (tajweedMistakes != null) {
      $result.tajweedMistakes.addAll(tajweedMistakes);
    }
    if (verseIndex != null) {
      $result.verseIndex = verseIndex;
    }
    if (exitCode != null) {
      $result.exitCode = exitCode;
    }
    if (wordIndex != null) {
      $result.wordIndex = wordIndex;
    }
    return $result;
  }
  ValidateAudioResponse._() : super();
  factory ValidateAudioResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAudioResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAudioResponse', createEmptyInstance: create)
    ..pc<WordMistake>(1, _omitFieldNames ? '' : 'wordMistakes', $pb.PbFieldType.PM, subBuilder: WordMistake.create)
    ..pc<TajweedMistake>(2, _omitFieldNames ? '' : 'tajweedMistakes', $pb.PbFieldType.PM, subBuilder: TajweedMistake.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'verseIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'exitCode', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'wordIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAudioResponse clone() => ValidateAudioResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAudioResponse copyWith(void Function(ValidateAudioResponse) updates) => super.copyWith((message) => updates(message as ValidateAudioResponse)) as ValidateAudioResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAudioResponse create() => ValidateAudioResponse._();
  ValidateAudioResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateAudioResponse> createRepeated() => $pb.PbList<ValidateAudioResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateAudioResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAudioResponse>(create);
  static ValidateAudioResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<WordMistake> get wordMistakes => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<TajweedMistake> get tajweedMistakes => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get verseIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set verseIndex($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerseIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerseIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get exitCode => $_getIZ(3);
  @$pb.TagNumber(4)
  set exitCode($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExitCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearExitCode() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get wordIndex => $_getIZ(4);
  @$pb.TagNumber(5)
  set wordIndex($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasWordIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearWordIndex() => clearField(5);
}

class ValidateAudioFileRequest extends $pb.GeneratedMessage {
  factory ValidateAudioFileRequest({
    $core.int? verseIndex,
    $core.List<$core.int>? buffer,
    $core.int? chapterIndex,
    $core.int? wordIndex,
  }) {
    final $result = create();
    if (verseIndex != null) {
      $result.verseIndex = verseIndex;
    }
    if (buffer != null) {
      $result.buffer = buffer;
    }
    if (chapterIndex != null) {
      $result.chapterIndex = chapterIndex;
    }
    if (wordIndex != null) {
      $result.wordIndex = wordIndex;
    }
    return $result;
  }
  ValidateAudioFileRequest._() : super();
  factory ValidateAudioFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAudioFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateAudioFileRequest', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'verseIndex', $pb.PbFieldType.O3)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'buffer', $pb.PbFieldType.OY)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'chapterIndex', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'wordIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAudioFileRequest clone() => ValidateAudioFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAudioFileRequest copyWith(void Function(ValidateAudioFileRequest) updates) => super.copyWith((message) => updates(message as ValidateAudioFileRequest)) as ValidateAudioFileRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateAudioFileRequest create() => ValidateAudioFileRequest._();
  ValidateAudioFileRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateAudioFileRequest> createRepeated() => $pb.PbList<ValidateAudioFileRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateAudioFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAudioFileRequest>(create);
  static ValidateAudioFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get verseIndex => $_getIZ(0);
  @$pb.TagNumber(1)
  set verseIndex($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerseIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerseIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get buffer => $_getN(1);
  @$pb.TagNumber(2)
  set buffer($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBuffer() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuffer() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get chapterIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set chapterIndex($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChapterIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearChapterIndex() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get wordIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set wordIndex($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWordIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearWordIndex() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
