import 'iller_model.dart';

class IllerServices {
  static Future<List<IllerModdel>> getData() async {
    List<IllerModdel> allIller = [];

    try {
      // debugPrint('Servis çalıştı');

      final String respons =
          await rootBundle.loadString('assets/json/turkiye_illeri.json');
      final data = await jsonDecode(respons);
      allIller = (data as List).map((e) => IllerModdel.fromJson(e)).toList();
    } catch (e) {
      print(e.toString());
    }
    return allIller;
  }
}
