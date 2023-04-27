// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClienteRecord> _$clienteRecordSerializer =
    new _$ClienteRecordSerializer();

class _$ClienteRecordSerializer implements StructuredSerializer<ClienteRecord> {
  @override
  final Iterable<Type> types = const [ClienteRecord, _$ClienteRecord];
  @override
  final String wireName = 'ClienteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClienteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nome;
    if (value != null) {
      result
        ..add('nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone;
    if (value != null) {
      result
        ..add('telefone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ClienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClienteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nome':
          result.nome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone':
          result.telefone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ClienteRecord extends ClienteRecord {
  @override
  final String? nome;
  @override
  final String? telefone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClienteRecord([void Function(ClienteRecordBuilder)? updates]) =>
      (new ClienteRecordBuilder()..update(updates))._build();

  _$ClienteRecord._({this.nome, this.telefone, this.ffRef}) : super._();

  @override
  ClienteRecord rebuild(void Function(ClienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClienteRecordBuilder toBuilder() => new ClienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClienteRecord &&
        nome == other.nome &&
        telefone == other.telefone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nome.hashCode);
    _$hash = $jc(_$hash, telefone.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClienteRecord')
          ..add('nome', nome)
          ..add('telefone', telefone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClienteRecordBuilder
    implements Builder<ClienteRecord, ClienteRecordBuilder> {
  _$ClienteRecord? _$v;

  String? _nome;
  String? get nome => _$this._nome;
  set nome(String? nome) => _$this._nome = nome;

  String? _telefone;
  String? get telefone => _$this._telefone;
  set telefone(String? telefone) => _$this._telefone = telefone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClienteRecordBuilder() {
    ClienteRecord._initializeBuilder(this);
  }

  ClienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nome = $v.nome;
      _telefone = $v.telefone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClienteRecord;
  }

  @override
  void update(void Function(ClienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClienteRecord build() => _build();

  _$ClienteRecord _build() {
    final _$result = _$v ??
        new _$ClienteRecord._(nome: nome, telefone: telefone, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
