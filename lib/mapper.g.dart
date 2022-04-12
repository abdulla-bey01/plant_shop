// GENERATED CODE - DO NOT MODIFY BY HAND
// Generated and consumed by 'simple_json' 

import 'package:simple_json_mapper/simple_json_mapper.dart';
import 'package:plant_shop/data/models/plant_model.dart';
import 'package:plant_shop/data/models/amount_model.dart';
import 'package:plant_shop/data/models/size_model.dart';
import 'package:plant_shop/data/models/category_model.dart';
import 'package:plant_shop/data/models/pot_model.dart';

final _plantmodelMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => PlantModel(
    id: mapper.applyDynamicFromJsonConverter<dynamic>(json['id'])!,
    title: mapper.applyDynamicFromJsonConverter(json['title'])!,
    price: mapper.deserialize<AmountModel>(json['price'] as Map<String, dynamic>)!,
    size: mapper.deserialize<SizeModel>(json['size'] as Map<String, dynamic>)!,
    imageUrls: (json['imageUrls'] as List).cast<String>().map((item) => mapper.applyDynamicFromJsonConverter<String>(item)!).toList(),
    categories: (json['categories'] as List).cast<Map<String, dynamic>>().map((item) => mapper.deserialize<CategoryModel>(item)!).toList(),
    pots: (json['pots'] as List).cast<Map<String, dynamic>>().map((item) => mapper.deserialize<PotModel>(item)!).toList(),
  ),
  (CustomJsonMapper mapper, PlantModel instance) => <String, dynamic>{
    'id': mapper.applyDynamicFromInstanceConverter<dynamic>(instance.id),
    'title': mapper.applyDynamicFromInstanceConverter(instance.title),
    'price': mapper.serializeToMap(instance.price),
    'size': mapper.serializeToMap(instance.size),
    'imageUrls': mapper.applyDynamicFromInstanceConverter(instance.imageUrls),
    'categories': instance.categories.map((item) => mapper.serializeToMap(item)).toList(),
    'pots': instance.pots.map((item) => mapper.serializeToMap(item)).toList(),
  },
);


final _amountmodelMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => AmountModel(
    amount: mapper.applyDynamicFromJsonConverter(json['amount'])!,
    currency: mapper.applyDynamicFromJsonConverter(json['currency'])!,
  ),
  (CustomJsonMapper mapper, AmountModel instance) => <String, dynamic>{
    'amount': mapper.applyDynamicFromInstanceConverter(instance.amount),
    'currency': mapper.applyDynamicFromInstanceConverter(instance.currency),
  },
);


final _sizemodelMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => SizeModel(
    heightSize: mapper.applyDynamicFromJsonConverter(json['heightSize'])!,
    heightPointer: mapper.applyDynamicFromJsonConverter(json['heightPointer'])!,
    widthSize: mapper.applyDynamicFromJsonConverter(json['widthSize'])!,
    widthPointer: mapper.applyDynamicFromJsonConverter(json['widthPointer'])!,
  ),
  (CustomJsonMapper mapper, SizeModel instance) => <String, dynamic>{
    'heightSize': mapper.applyDynamicFromInstanceConverter(instance.heightSize),
    'heightPointer': mapper.applyDynamicFromInstanceConverter(instance.heightPointer),
    'widthSize': mapper.applyDynamicFromInstanceConverter(instance.widthSize),
    'widthPointer': mapper.applyDynamicFromInstanceConverter(instance.widthPointer),
  },
);


final _categorymodelMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => CategoryModel(
    id: mapper.applyDynamicFromJsonConverter<dynamic>(json['id'])!,
    title: mapper.applyDynamicFromJsonConverter(json['title'])!,
  ),
  (CustomJsonMapper mapper, CategoryModel instance) => <String, dynamic>{
    'id': mapper.applyDynamicFromInstanceConverter<dynamic>(instance.id),
    'title': mapper.applyDynamicFromInstanceConverter(instance.title),
  },
);


final _potmodelMapper = JsonObjectMapper(
  (CustomJsonMapper mapper, Map<String, dynamic> json) => PotModel(
    id: mapper.applyDynamicFromJsonConverter<dynamic>(json['id'])!,
    imageUrl: mapper.applyDynamicFromJsonConverter(json['imageUrl'])!,
  ),
  (CustomJsonMapper mapper, PotModel instance) => <String, dynamic>{
    'id': mapper.applyDynamicFromInstanceConverter<dynamic>(instance.id),
    'imageUrl': mapper.applyDynamicFromInstanceConverter(instance.imageUrl),
  },
);

void init() {
  JsonMapper.register(_plantmodelMapper);
  JsonMapper.register(_amountmodelMapper);
  JsonMapper.register(_sizemodelMapper);
  JsonMapper.register(_categorymodelMapper);
  JsonMapper.register(_potmodelMapper); 

  

  JsonMapper.registerListCast((value) => value?.cast<PlantModel>().toList());
  JsonMapper.registerListCast((value) => value?.cast<AmountModel>().toList());
  JsonMapper.registerListCast((value) => value?.cast<SizeModel>().toList());
  JsonMapper.registerListCast((value) => value?.cast<CategoryModel>().toList());
  JsonMapper.registerListCast((value) => value?.cast<PotModel>().toList());
}
    