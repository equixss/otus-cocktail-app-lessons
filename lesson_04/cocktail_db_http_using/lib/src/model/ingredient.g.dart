// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Ingredient> _$ingredientSerializer = new _$IngredientSerializer();

class _$IngredientSerializer implements StructuredSerializer<Ingredient> {
  @override
  final Iterable<Type> types = const [Ingredient, _$Ingredient];
  @override
  final String wireName = 'Ingredient';

  @override
  Iterable<Object> serialize(Serializers serializers, Ingredient object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'ingredientType',
      serializers.serialize(object.ingredientType,
          specifiedType: const FullType(String)),
    ];
    if (object.isAlcoholic != null) {
      result
        ..add('isAlcoholic')
        ..add(serializers.serialize(object.isAlcoholic,
            specifiedType: const FullType(bool)));
    }
    if (object.abv != null) {
      result
        ..add('abv')
        ..add(serializers.serialize(object.abv,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Ingredient deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IngredientBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ingredientType':
          result.ingredientType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isAlcoholic':
          result.isAlcoholic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'abv':
          result.abv = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Ingredient extends Ingredient {
  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String ingredientType;
  @override
  final bool isAlcoholic;
  @override
  final String abv;

  factory _$Ingredient([void Function(IngredientBuilder) updates]) =>
      (new IngredientBuilder()..update(updates)).build();

  _$Ingredient._(
      {this.id,
      this.name,
      this.description,
      this.ingredientType,
      this.isAlcoholic,
      this.abv})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Ingredient', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Ingredient', 'name');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Ingredient', 'description');
    }
    if (ingredientType == null) {
      throw new BuiltValueNullFieldError('Ingredient', 'ingredientType');
    }
  }

  @override
  Ingredient rebuild(void Function(IngredientBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngredientBuilder toBuilder() => new IngredientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Ingredient &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        ingredientType == other.ingredientType &&
        isAlcoholic == other.isAlcoholic &&
        abv == other.abv;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), name.hashCode),
                    description.hashCode),
                ingredientType.hashCode),
            isAlcoholic.hashCode),
        abv.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Ingredient')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('ingredientType', ingredientType)
          ..add('isAlcoholic', isAlcoholic)
          ..add('abv', abv))
        .toString();
  }
}

class IngredientBuilder implements Builder<Ingredient, IngredientBuilder> {
  _$Ingredient _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _ingredientType;
  String get ingredientType => _$this._ingredientType;
  set ingredientType(String ingredientType) =>
      _$this._ingredientType = ingredientType;

  bool _isAlcoholic;
  bool get isAlcoholic => _$this._isAlcoholic;
  set isAlcoholic(bool isAlcoholic) => _$this._isAlcoholic = isAlcoholic;

  String _abv;
  String get abv => _$this._abv;
  set abv(String abv) => _$this._abv = abv;

  IngredientBuilder();

  IngredientBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _description = _$v.description;
      _ingredientType = _$v.ingredientType;
      _isAlcoholic = _$v.isAlcoholic;
      _abv = _$v.abv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Ingredient other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Ingredient;
  }

  @override
  void update(void Function(IngredientBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Ingredient build() {
    final _$result = _$v ??
        new _$Ingredient._(
            id: id,
            name: name,
            description: description,
            ingredientType: ingredientType,
            isAlcoholic: isAlcoholic,
            abv: abv);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
