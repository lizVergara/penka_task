import 'package:penka_task/data/env.dart';
import 'package:penka_task/data/texts.dart';
import 'package:penka_task/models/Penka.dart';
import 'package:penka_task/models/Public.dart';
import 'package:penka_task/services/misc.dart';

class Fetch {
  static Future<List<TemplatePenkas>> templates(String type) async {
    final List<TemplatePenkas> values = [];
    final response = await Client.get(
        url: Env.TEMPLATE_TYPES,
        headers: {Env.KEY: Env.PENKA_KEY},
        parameters: {'type': type});

    if (response['success'] == false) {
      return Future.error(APPText.error);
    }
    for (var map in response['data']) {
      var mappedData = TemplatePenkas.fromJson(map);
      values.add(mappedData);
    }
    return values;
  }

  static Future<List<PublicPenka>> public() async {
    final List<PublicPenka> values = [];

    var response =
        await Client.get(url: Env.PUBLIC, headers: {Env.KEY: Env.PENKA_KEY});

    for (var map in response['data']) {
      var mappedData = PublicPenka.fromJson(map);
      values.add(mappedData);
    }
    return values;
  }
}
