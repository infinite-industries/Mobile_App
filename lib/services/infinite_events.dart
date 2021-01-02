import 'package:http/http.dart';
import 'dart:convert';

class InfiniteAPI {
  bool success;
  List<dynamic> events;

  InfiniteAPI();
  Future<void> getEvents() async {
    try {
      Response response =
          await get('https://staging-api.infinite.industries/events');
      Map data = jsonDecode(response.body);

      print(data['status']);
      if (data['status'] == 'success') {
        success = true;
        print("Passing events as a map for further unpacking");
        events = data['events'];
      } else {
        success = false;
        print("Passing an Error from the API");
      }
    } catch (e) {
      print(e);
      success = false;
    }
  }
}
