import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../helpers/deco_localizations.dart';
import '../models/category_model.dart';

class Category extends StatefulWidget {
  final CategoryModel cat;
  final VoidCallback onTap;
  final int index;

  Category(this.cat, { this.onTap, this.index});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool _backExists = true;
  String _imageName;

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    _imageName = "images/categories/category-${widget.index > 9 ? widget.index : "0${widget.index}"}.jpg";
    if(_backExists)
      tryLoadImage(_imageName);

    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.15),
              blurRadius: 5,
              offset: Offset(0, 0),
            )
          ],
          image: (widget.index!=null && _backExists)
              ?DecorationImage(
            image: AssetImage(_imageName),
            colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
            fit: BoxFit.fill,)
              :null,
          borderRadius: BorderRadius.all(Radius.circular(3))
        ),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(3)),
              color: _backExists ? Colors.transparent : isDark ? Color(0xFF1B1E28) : Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.cat.name,
                  style: TextStyle(
                    color: (isDark || _backExists) ? Colors.white : Color(0xFF1B1E28),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  widget.cat.count.toString() + DecoLocalizations.of(context).localizedString("category_posts_num"),
                  style: TextStyle(
                    color: _backExists? Colors.white : Color(0xFF7F7E96),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  tryLoadImage(String name) async {
    try{
      return await rootBundle.load(name);
    } catch(_){
      setState(() {
        _backExists = false;
      });
    }
  }

}
