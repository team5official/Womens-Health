import 'package:flutter/material.dart';
import 'package:pt/ArticleModel.dart';
import 'package:pt/NewsArticle.dart';
import 'package:pt/webView.dart';

class News_Feed extends StatefulWidget {
  @override
  News_FeedState createState() => News_FeedState();
}

class News_FeedState extends State<News_Feed> {
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    getNewsArticle();
  }

  getNewsArticle() async {
    NewsArticle newsClass = NewsArticle();
    await newsClass.getNewsArticle();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text(
            'Health News',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView.builder(
            itemCount: articles.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return BlogTile(
                imageUrl: articles[index].urlToImage,
                title: articles[index].title,
                desc: articles[index].description,
                url: articles[index].url,
              );
            },
          ),
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  BlogTile({this.imageUrl, this.title, this.desc, this.url});
  final String imageUrl;
  final String title;
  final String desc;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewFromHome(
              blogUrl: url,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(imageUrl),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
