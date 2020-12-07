import 'package:flutter_emi_news/models/category_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();








  //1
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl = "https://www.emi.ac.ma/images/stories/baniere12112012/SNC102700.jpg";
  category.add(categoryModel);

  categoryModel = new CategoryModel();
  //2
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl = "https://www.emi.ac.ma/images/stories/baniere12112012/SNC102280.jpg";
  category.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageUrl = "https://static.lematin.ma/files/lematin/images/articles/2019/07/661c207a1936611487e7f1ecd66eb54a.jpg";
  category.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl = "https://maroc-diplomatique.net/wp-content/uploads/2019/04/20190403_161441-1024x672.jpg";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl = "https://lnt.ma/wp-content/uploads/2019/02/capture-decran-2019-02-08-a-09.57.55-925x430.png";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl = "https://industries.ma/wp-content/uploads/2019/03/untitled-54.jpg";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl = "http://www.mapexpress.ma/wp-content/uploads/2018/07/C%C3%A9r%C3%A9monie-de-remise-des-dipl%C3%B4mes-%C3%A0-la-55%C3%A8me-promotion-de-lEMI-M.jpg";
  category.add(categoryModel);

  return category;
}








