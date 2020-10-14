///
/// Ingredient Model Definition based on response from
/// curl https://the-cocktail-db.p.rapidapi.com/lookup.php\?iid\=552
/// Current scheme is:
/// ```
///   {
///       "ingredients": [
///           {
///               "idIngredient": "552",
///               "strIngredient": "Elderflower cordial",
///               "strDescription": "Elderflower cordial is a soft drink made largely from a refined sugar and water solution and uses the flowers of the European elderberry. Historically the cordial has been popular in North Western Europe where it has a strong Victorian heritage.",
///               "strType": "Cordial",
///               "strAlcohol": null,
///               "strABV": null
///           }
///       ]
///   }
///  ```
///
///

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:cocktaildbhttpusing/src/serializers/serializers.dart';

part 'ingredient.g.dart';

abstract class Ingredient implements Built<Ingredient, IngredientBuilder> {

  String get id;
  String get name;
  String get description;
  String get ingredientType;
  @nullable
  bool get isAlcoholic;
  @nullable
  String get abv;

  Ingredient._();
  factory Ingredient([void Function(IngredientBuilder) updates]) = _$Ingredient;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Ingredient.serializer, this);
  }

  static Ingredient fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Ingredient.serializer, json);
  }

  static Serializer<Ingredient> get serializer => _$ingredientSerializer;
}
