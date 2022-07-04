import 'package:icanuas/models/berita_model.dart';
import 'package:dio/dio.dart';

class ArtikelService {
  Future<artikel> tampilkanartikel() async {
    var response = await Dio().get('https://api.indosiana.com/api/articles');
    return artikel.fromJson({"data": response.data});
  }

  Future<artikel> tampilkandetail({String? key}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/id_artikel/$key');
    return artikel.fromJson({"data": response.data});
  }
}
