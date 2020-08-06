import 'dart:convert';
import 'package:pt/ArticleModel.dart';
import 'package:http/http.dart' as http;

class NewsArticle {
  List<ArticleModel> news = [];
  Future<void> getNewsArticle() async {
    http.Response response = await http.get(
        "http://newsapi.org/v2/top-headlines?country=in&apiKey=354ccddf2535462483ac3f828d25d788");
    if (response.statusCode == 200) {
      String jsonData = response.body;
      jsonDecode(jsonData)["articles"].forEach((element) {
        if (element["urlToImage"] != null && element["description"] != null) {
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['element']);
          news.add(articleModel);
        } else
          throw (e) {
            print(e);
          };
      });
    }
  }
}
