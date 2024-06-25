import 'package:nectar/core/model/category_model.dart';
import 'package:nectar/core/service/supabase_auth.dart';

class CategoryService{
    Future<List<CategoryModel>> getCategory() async {
    final res = await supabase.from('category').select("*,product(*, brand(*), category(*))");
    return res.map((e) => CategoryModel.fromMap(e)).toList();
  }
}