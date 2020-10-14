import 'package:json_annotation/json_annotation.dart';

part 'ingredient_dto.g.dart';

///               "idIngredient": "552",
///               "strIngredient": "Elderflower cordial",
///               "strDescription": "Elderflower cordial is a soft drink made largely from a refined sugar and water solution and uses the flowers of the European elderberry. Historically the cordial has been popular in North Western Europe where it has a strong Victorian heritage.",
///               "strType": "Cordial",
///               "strAlcohol": null,
///               "strABV": null
///

@JsonSerializable(createFactory: true, createToJson: false)
class IngredientDto {
  @JsonKey(name: 'idIngredient')
  final String id;
  @JsonKey(name: 'strIngredient')
  final String  name;
  @JsonKey(name: 'strDescription')
  final String  description;
  @JsonKey(name: 'strType')
  final String ingredientType;
  @JsonKey(name: 'strAlcohol', nullable: true, toJson: _isAlcoholicToBool)
  final String isAlcoholic;
  @JsonKey(name: 'strABV', nullable: true)
  final String abv;

  IngredientDto(
    this.id,
    this.name,
    this.description,
    this.ingredientType,
    this.isAlcoholic,
    this.abv
  );

  static bool _isAlcoholicToBool(String val) => val == 'Yes';

  factory IngredientDto.fromJson(Map<String, dynamic> json) => _$IngredientDtoFromJson(json);

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': id,
    'name': name,
    'description': description,
    'ingredientType': ingredientType,
    'isAlcoholic': _isAlcoholicToBool(isAlcoholic),
    'abv': abv,
  };
}