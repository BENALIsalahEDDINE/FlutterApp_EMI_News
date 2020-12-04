import 'package:flutter/material.dart';
import 'package:flutter_emi_news/helper/data.dart';
import 'package:flutter_emi_news/helper/news.dart';
import 'package:flutter_emi_news/models/article_model.dart';
import 'package:flutter_emi_news/models/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> articles = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
  }

  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Emi"),
            Text("News",style: TextStyle(
                color: Colors.blue
            ),)
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading ? Center(
          child : Container(
            child: CircularProgressIndicator(),
          ),
      )  : Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 70,
              child: ListView.builder(
                itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return CategoryTile(
                      imageUrl: categories[index].imageUrl,
                      categoryName: categories[index].categoryName,
                    );
                  }),
            )

          ],

        ),
      ),
    );

  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTile({this.imageUrl,this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(
         children: <Widget>[
           ClipRRect(
             borderRadius: BorderRadius.circular(6),
              child: Image.network(imageUrl,width: 120,height: 60,fit: BoxFit.cover,)
           ),
           Container(
             alignment: Alignment.center,
             width: 120,height: 60,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(6),
             ),

             child: Text(categoryName,style: TextStyle(
               color: Colors.white,
               fontSize: 14,
               fontWeight: FontWeight.w500
             ),),
           )
         ],
        ),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl,title,desc;
  BlogTile({@required this.imageUrl,@required this.title,@required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Image.network(imageUrl),
            Text("title"),
            Text("desc")
          ],
        ),
    );
  }
}
