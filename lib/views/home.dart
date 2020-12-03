import 'package:flutter/material.dart';
import 'package:flutter_emi_news/helper/data.dart';
import 'package:flutter_emi_news/models/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<CategoryModel> categories = new List<CategoryModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
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
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
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
    return Container(
      child: Stack(
       children: <Widget>[
         ClipRRect(
           borderRadius: BorderRadius.circular(6),
            child: Image.network(imageUrl,width: 120,height: 60,fit: BoxFit.cover,)
         ),
         Container(
           child: Text(categoryName,style: TextStyle(
             color: Colors.white
           ),),
         )
       ],
      ),
    );
  }
}

