import 'dart:convert';
import 'package:deco_news/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../helpers/wordpress.dart';
import '../models/category_model.dart';
import '../models/post_model.dart';
import '../widgets/deco_appbar.dart';
import '../widgets/deco_news_drawer.dart';
import '../widgets/no_data.dart';
import '../widgets/loading.dart';
import '../widgets/news.dart';
import 'single_post.dart';

class BookmarksScreen extends StatefulWidget {
  @override
  _BookmarksScreenState createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  bool isLoading = true;
  List<PostModel> posts = [];

  @override
  void initState() {
    super.initState();

    /// load bookmarked posts
    _loadData();

    /*
    WidgetsBinding.instance.addPersistentFrameCallback((timeStamp) {
      Overlay.of(context).insert(
          OverlayEntry(builder: (context){
            return Container(
              color: Colors.green,
              width: 50,
              height: 50,
            );
          })
      );
    }); */

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      child: Scaffold(
          appBar: DecoNewsAppBar(), drawer: DecoNewsDrawer(), body: _buildBody()),
      padding: adPadding(context: context),
    );
  }

  _buildBody() {
    /// show loading message
    if (isLoading) {
      return Loading();
    }

    /// show no data message
    if (posts.length == 0) {
      return NoData('Add something to bookmarks by taping on bookmark icon');
    }

    bool isDark = Theme.of(context).brightness == Brightness.dark;

    /// list of posts
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                child: Text(
                  'Bookmarked News',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: isDark ? Colors.white : Color(0xFF1B1E28)),
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    posts.clear();
                    WordPress.clearBookmarks();
                  });
                },
                child: Text(
                  'Clear all',
                  style: TextStyle(
                    color: isDark ? Colors.white : Color(0xFF1B1E28),
                  ),
                ),
              ),
            ],
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                /// news widget
                return News(
                  posts[index],
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SinglePost(posts[index]),
                    ));
                  },
                );
              }),
        ],
      ),
    );
  }

  /// Loads bookmarks
  _loadData() async {
    /// get list of bookmarks
    List<int> bookmarks = await WordPress.getBookmarkedPostIDs();

    if (bookmarks.length > 0) {
      /// Fetch posts and categories
      var data = await Future.wait([
        WordPress.fetchPostsFromList(bookmarks),
        WordPress.fetchCategories()
      ]);

      Response postsResponse = data[0];
      Response categoriesResponse = data[1];

      if (postsResponse.statusCode == 200 &&
          categoriesResponse.statusCode == 200) {
        if (mounted) {
          setState(() {
            var decodedCategories =
                json.decode(categoriesResponse.body) as List;

            /// create post models from loaded posts
            posts = (json.decode(postsResponse.body) as List).map((data) {
              /// find post category
              var categoryID = data['categories'].first;
              var category = decodedCategories
                  .firstWhere((category) => category['id'] == categoryID);

              return new PostModel.fromJson(
                  data, new CategoryModel.fromJson(category),
                  bookmarks: bookmarks);
            }).toList();

            /// disable loading animations
            isLoading = false;
          });
        }
      } else {
        throw Exception('Failed to load data');
      }
    } else {
      setState(() {
        isLoading = false;
      });
    }

  }
}
