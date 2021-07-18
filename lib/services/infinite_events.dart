import 'package:http/http.dart' as http;
import 'dart:convert';

var url =
    Uri.parse('https://api.infinite.industries:443/v1/current-events/verified');

class InfiniteAPI {
  late bool success;
  List<dynamic>? events;

  InfiniteAPI();
  Future<void> getEvents() async {
    try {
      http.Response response = await http.get(url);
      print("trying");
      Map data = jsonDecode(response.body);

      print("Response from server:" + data['status']);
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
